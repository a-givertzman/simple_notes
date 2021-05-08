import 'package:auth_app/domain/auth/domain_user.dart';
import 'package:auth_app/domain/core/error/failure.dart';
import 'package:auth_app/domain/auth/email_address.dart';
import 'package:auth_app/domain/auth/i_auth_repository.dart';
import 'package:auth_app/domain/auth/password.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'firebase_user_mapper.dart';

//
// implementing of domain/auth/i_auth_repository.dart interface
//
@LazySingleton(as: IAuthRepositiry)
class FirebaseAuthRepository implements IAuthRepositiry {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  const FirebaseAuthRepository(
    this._firebaseAuth, 
    this._googleSignIn,
  );

  @override
  Option<DomainUser> currentUser() {
    final User? firebaseUser = _firebaseAuth.currentUser;
    return optionOf(firebaseUser?.toDomainUser());
  }

  @override
  Future<Either<Failure, String>> registerWithEmailAndPassword({
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
      return const Right('OK');
    } on PlatformException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          return const Left( EmailAlreadyInUseFailure('Firebase: Email already in use'));
        // break;
        case 'invalid-email':
          return const Left(InvalidEmailAndPasswordFailure('Firebase: invalid email'));
        // break;
        case 'weak-password':
          return const Left(AuthFailureOnServerSide('Firebase: The password is not strong enough'));
        // break;
        default: { // 'operation-not-allowed' or whatewer
          return const Left(AuthFailureOnServerSide('Firebase: Operation not allowed'));
        }
      }
    }
  }
  
  @override
  Future<Either<Failure, String>> signInWithEmailAndPassword({
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
      // TODO "OK" reply from server has to be implemented
      // TODO .then((value) => value.user.uid)
      return const Right('OK');
    } on PlatformException catch (e) {
      if (e.code == 'invalid-email' ||
          e.code == 'user-disabled' ||
          e.code == 'user-not-found') {
          return const Left(InvalidEmailAndPasswordFailure('Firebase: Wrong email or password'));
      } else { // 'wrong-password' or whatewer
          return const Left(AuthFailureOnServerSide('Firebase: Authorization error'));
      }
    }  
  }

  @override
  Future<Either<Failure, String>> signInWithGoogle() async {
    try {
      // Starts the interactive sign-in process.
      final googleUser =await _googleSignIn.signIn();
      if (googleUser == null) {
        return const Left(AuthCanceledByUserFailure('Google: Authorization canceled'));
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
      
      return Right(authResult.toString());
    } on PlatformException catch (e) {
      // TODO All authentication errors should be logged herer
      if (e.code == 'invalid-credential' ||
          e.code == 'user-disabled' ||
          e.code == 'user-not-found') {
          return const Left(InvalidEmailAndPasswordFailure('Firebase: Wrong credintals'));
      } else { // 'all ather errors
          return const Left(AuthFailureOnServerSide('Firebase: Authorization error'));
      }
    }

  }

  @override
  Future<void> signOut() => Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
  ]);

  @override
  Future<Either<Failure, String>> resetPassword({
    required EmailAddress emailAddress, 
  }) async {
    final emailStr = emailAddress.getOrCrush();
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: emailStr);
      return Right('Email was sent to $emailStr');
    } catch (e) {
      // TODO All authentication errors should be logged herer
      return const Left(AuthFailureOnServerSide("Firebase: something's wrong"));
    }
  }

  @override
  Future<Either<Failure, String>> updatePassword({
    required Password password
  }) async {
    final User? _firebaseUser = _firebaseAuth.currentUser;
    if (_firebaseUser == null) {
          return const Left(InvalidEmailAndPasswordFailure('Firebase: Wrong email'));
    } else {
      try {
        await _firebaseUser.updatePassword(password.getOrCrush());
        return const Right('Successfully changed password');
      } on PlatformException catch (e) {
        return Left(
          AuthFailureOnServerSide("Firebase: Password can't be changed ${e.message}")
        );
      }
    }
  }
}