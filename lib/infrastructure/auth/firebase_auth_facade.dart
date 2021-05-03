import 'package:auth_app/core/error/errors.dart';
import 'package:auth_app/core/error/failure.dart';
import 'package:auth_app/domain/auth/email_address.dart';
import 'package:auth_app/core/reply/reply.dart';
import 'package:auth_app/domain/auth/i_auth_facade.dart';
import 'package:auth_app/domain/auth/password.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

//
// implementing of domain/auth/i_auth_facade.dart interface
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth, 
    this._googleSignIn,
  );

  @override
  Future<Reply> registerWithEmailAndPassword({
    required EmailAddress emailAddress, 
    required Password password,
  }) async {
    // TODO Have some code duplication here, needs to be refactored
    final emailStr = emailAddress.getOrCrush();
    final passwordStr = password.getOrCrush();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailStr, 
        password: passwordStr,
      );
      // TODO "OK" reply from server has to be defined
      return Right('OK') as Reply;
    } on PlatformException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          return Left(EmailAlreadyInUseFailure('Firebase: Email already in use')) as Reply;
        // break;
        case 'invalid-email':
          return Left(InvalidEmailAndPasswordFailure('Firebase: invalid email')) as Reply;
        // break;
        case 'weak-password':
          return Left(AuthFailureOnServerSide('Firebase: The password is not strong enough')) as Reply;
        // break;
        default: { // 'operation-not-allowed' or whatewer
          return Left(AuthFailureOnServerSide('Firebase: Operation not allowed')) as Reply;
        }
      }
    }
  }
  
  @override
  Future<Reply> signInWithEmailAndPassword({
    required EmailAddress emailAddress, 
    required Password password,
  }) async {
    final emailStr = emailAddress.getOrCrush();
    final passwordStr = password.getOrCrush();

    try {
      // TODO Have some code duplication here, needs to be refactored
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailStr, 
        password: passwordStr,
      );
      return Right('OK') as Reply;
      // TODO "OK" reply from server has to be defined
    } on PlatformException catch (e) {
      if (e.code == 'invalid-email' ||
          e.code == 'user-disabled' ||
          e.code == 'user-not-found') {
          return Left(InvalidEmailAndPasswordFailure('Firebase: Wrong email or password')) as Reply;
      } else { // 'wrong-password' or whatewer
          return Left(AuthFailureOnServerSide('Firebase: Authorization error')) as Reply;
      }
    }  
  }

  @override
  Future<Reply> signInWithGoogle() async {
    try {

      // Starts the interactive sign-in process.
      final googleUser =await _googleSignIn.signIn();
      if (googleUser == null) {
        return Left(AuthCanceledByUserFailure('Google: Authorization canceled')) as Reply;
      }

      // Get specific [GoogleSignInAuthentication] for the account.
      final googleAuthentication = await googleUser.authentication;

      // jast converting google specific authentication (idToken & accessToken) 
      // to firebase credintals
      final authCredintal = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );
      
      // now sign in with firebase credential
      final authResult = await _firebaseAuth.signInWithCredential(authCredintal);
      
      return Right(authResult) as Reply;
    } on PlatformException catch (e) {
      // TODO All authentication errors should be logged herer
      if (e.code == 'invalid-credential' ||
          e.code == 'user-disabled' ||
          e.code == 'user-not-found') {
          return Left(InvalidEmailAndPasswordFailure('Firebase: Wrong credintals')) as Reply;
      } else { // 'all ather errors
          return Left(AuthFailureOnServerSide('Firebase: Authorization error')) as Reply;
      }
    }

  }
}