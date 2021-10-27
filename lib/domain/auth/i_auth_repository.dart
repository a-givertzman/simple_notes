import 'package:auth_app/domain/auth/domain_user.dart';
import 'package:auth_app/domain/auth/email_address.dart';
import 'package:auth_app/domain/auth/password.dart';
import 'package:auth_app/domain/auth/user_name.dart';
import 'package:auth_app/domain/auth/user_photo_url.dart';
import 'package:dartz/dartz.dart';

import 'auth_failure.dart';

abstract class IAuthRepository {
  Option<DomainUser> getCurrentUser();

  Future<Either<AuthFailure, String>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, String>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, String>> signInWithGoogle();
  
  Future<Either<AuthFailure, String>> signInWithFacebook();

  Future<Either<AuthFailure, String>> resetPassword({
    required EmailAddress emailAddress,
  });

  Future<Either<AuthFailure, String>> updateEmailAddress({
    required EmailAddress emailAddress,
  });

  Future<Either<AuthFailure, String>> updatePassword({
    required Password password,
  });

  Future<Either<AuthFailure, String>> updateProfile({
    required UserName displayName,
    required UserPhotoURL photoURL,
  });

  Future<void> signOut();
}
