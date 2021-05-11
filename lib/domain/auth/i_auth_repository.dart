import 'package:auth_app/domain/auth/domain_user.dart';
import 'package:auth_app/domain/auth/user_name.dart';
import 'package:auth_app/domain/auth/user_photo_url.dart';
import 'package:auth_app/domain/core/error/failure.dart';
import 'package:auth_app/domain/auth/email_address.dart';
import 'package:auth_app/domain/auth/password.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Option<DomainUser> currentUser();

  Future<Either<Failure, String>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<Failure, String>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<Failure, String>> signInWithGoogle();
  
  Future<Either<Failure, String>> signInWithFacebook();

  Future<void> signOut();

  Future<Either<Failure, String>> resetPassword({
    required EmailAddress emailAddress,
  });

  Future<Either<Failure, String>> updateEmailAddress({
    required EmailAddress emailAddress,
  });

  Future<Either<Failure, String>> updatePassword({
    required Password password,
  });

  Future<Either<Failure, String>> updateProfile({
    required UserName displayName,
    required UserPhotoURL photoURL
  });
}