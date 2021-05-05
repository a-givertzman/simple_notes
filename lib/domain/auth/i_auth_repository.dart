import 'package:auth_app/domain/auth/domain_user.dart';
import 'package:auth_app/domain/core/error/failure.dart';
import 'package:auth_app/domain/auth/email_address.dart';
import 'package:auth_app/domain/auth/password.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepositiry {
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
  
  Future<void> signOut();
}