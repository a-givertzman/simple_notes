import 'package:auth_app/domain/auth/auth_failure.dart';
import 'package:auth_app/domain/auth/domain_user.dart';
import 'package:auth_app/domain/auth/email_address.dart';
import 'package:auth_app/domain/auth/i_auth_repository.dart';
import 'package:auth_app/domain/auth/password.dart';
import 'package:auth_app/domain/auth/user_name.dart';
import 'package:auth_app/domain/auth/user_photo_url.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import './firebase_user_mapper.dart';

//
// implementing of domain/auth/i_auth_repository.dart interface
//
@LazySingleton(as: IAuthRepository)
class FirebaseAuthRepository implements IAuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;

  const FirebaseAuthRepository(
    this._firebaseAuth, 
    this._googleSignIn,
    this._facebookAuth,
  );
  //
  @override
  Option<DomainUser> getCurrentUser() {
    final User? firebaseUser = _firebaseAuth.currentUser;
    return optionOf(firebaseUser?.toDomainUser());
  }
  //
  @override
  Future<Either<AuthFailure, String>> registerWithEmailAndPassword({
    required EmailAddress emailAddress, 
    required Password password,
  }) async {
    // TODO Have some code duplication here, needs to be refactored
    final emailStr = emailAddress.getOrCrush();
    final passwordStr = password.getOrCrush();

    print( "[registerWithEmailAndPassword] emailAddress: $emailStr" );
    print( "[registerWithEmailAndPassword] password: $passwordStr" );

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailStr, 
        password: passwordStr,
      );
      // TODO "OK" reply from server has to be defined
      return const Right('OK');
    } on FirebaseAuthException catch (e) {
        
      print( "[registerWithEmailAndPassword] Exception:" );
      print( e );

      switch (e.code) {
        case 'email-already-in-use':
        
        print( "[registerWithEmailAndPassword] emailAddress: $emailStr already in use" );

          return const Left(AuthFailure.emailAlreadyInUseFailure(message: 'Firebase: Email already in use'));
        // break;
        case 'invalid-email':
          return const Left(AuthFailure.invalidEmailAndPasswordFailure(message: 'Firebase: invalid email'));
        // break;
        case 'weak-password':
          return const Left(AuthFailure.authFailureOnServerSide(message: 'Firebase: The password is not strong enough'));
        // break;
        default: { // 'operation-not-allowed' or whatewer
          return const Left(AuthFailure.authFailureOnServerSide(message: 'Firebase: Operation not allowed'));
        }
      }
    }
  }
  //
  @override
  Future<Either<AuthFailure, String>> signInWithEmailAndPassword({
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
          return const Left(AuthFailure.invalidEmailAndPasswordFailure(message: 'Firebase: Wrong email or password'));
      } else { // 'wrong-password' or whatewer
          return const Left(AuthFailure.authFailureOnServerSide(message: 'Firebase: Authorization error'));
      }
    }  
  }
  //
  @override
  Future<Either<AuthFailure, String>> signInWithGoogle() async {
    try {
      // Starts the interactive sign-in process.
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return const Left(AuthFailure.authCanceledByUserFailure(message: 'Google: Authorization canceled'));
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
          return const Left(AuthFailure.invalidEmailAndPasswordFailure(message: 'Firebase: Wrong credintals'));
      } else { // 'all ather errors
          return const Left(AuthFailure.authFailureOnServerSide(message: 'Firebase: Authorization error'));
      }
    }

  }
  //
  @override
  Future<Either<AuthFailure, String>> signInWithFacebook() async {
    try {
      // Trigger the sign-in flow
      final loginResult = await _facebookAuth.login();
      if (loginResult.status != LoginStatus.success) {
        return const Left(AuthFailure.authCanceledByUserFailure(message: 'Facebook: Authorization canceled'));
      }

      // Create a credential from the access token
      final facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

      // now sign in with credential
      final authResult = await _firebaseAuth.signInWithCredential(facebookAuthCredential);
      
      return Right(authResult.toString());
    } on PlatformException catch (e) {
      // TODO All authentication errors should be logged herer
      if (e.code == 'invalid-credential' ||
          e.code == 'user-disabled' ||
          e.code == 'user-not-found') {
          return const Left(AuthFailure.invalidEmailAndPasswordFailure(message: 'Facebook: Wrong credintals'));
      } else { // 'all ather errors
          return const Left(AuthFailure.authFailureOnServerSide(message: 'Facebook: Authorization error'));
      }
    }

  }
  //
  @override
  Future<Either<AuthFailure, String>> resetPassword({
    required EmailAddress emailAddress, 
  }) async {
    final emailStr = emailAddress.getOrCrush();
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: emailStr);
      return Right('Email was sent to $emailStr');
    } catch (e) {
      // TODO All authentication errors should be logged herer
      return const Left(AuthFailure.authFailureOnServerSide(message: "Firebase: something's wrong"));
    }
  }
  //
  @override
  Future<Either<AuthFailure, String>> updateEmailAddress({
    required EmailAddress emailAddress
  }) async {
    final User? _firebaseUser = _firebaseAuth.currentUser;
    if (_firebaseUser == null) {
      return const Left(AuthFailure.authFailureOnServerSide(message: 'Firebase: Empty Current user'));
    } else {
      try {
        await _firebaseUser.updateEmail(emailAddress.getOrCrush());
        return const Right('Successfully changed email address');
      } on PlatformException catch (e) {
        return Left(
          AuthFailure.authFailureOnServerSide(message: "Firebase: Email address can't be changed. ${e.message}")
        );
      }
    }
  }
  //
  @override
  Future<Either<AuthFailure, String>> updatePassword({
    required Password password
  }) async {
    final User? _firebaseUser = _firebaseAuth.currentUser;
    if (_firebaseUser == null) {
      return const Left(AuthFailure.authFailureOnServerSide(message: 'Firebase: Empty Current user'));
    } else {
      try {
        await _firebaseUser.updatePassword(password.getOrCrush());
        return const Right('Successfully changed password');
      } on PlatformException catch (e) {
        return Left(
          AuthFailure.authFailureOnServerSide(message: "Firebase: Password can't be changed. ${e.message}")
        );
      }
    }
  }
  //
  @override
  Future<Either<AuthFailure, String>> updateProfile({
    required UserName displayName, 
    required UserPhotoURL photoURL,
  }) async {
    final _displayName = displayName.getOrCrush();
    final _photoURL = photoURL.getOrCrush();
    final User? _firebaseUser = _firebaseAuth.currentUser;
    if (_firebaseUser == null) {
      return const Left(AuthFailure.authFailureOnServerSide(message: 'Firebase: Empty Current user'));
    } else {
      try {
        await _firebaseUser.updateProfile(
          displayName: _displayName, 
          photoURL: _photoURL,
        );
        return const Right('Successfully updated user profile');
      } on PlatformException catch (e) {
        return Left(
          AuthFailure.authFailureOnServerSide(message: "Firebase: User profile can't be updated. ${e.message}")
        );
      }
    }
  }
  //
  @override
  Future<void> signOut() => Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
      // _facebookAuth.logOut(),
  ]);
}