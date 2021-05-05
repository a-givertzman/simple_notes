import 'package:auth_app/core/error/failure.dart';
import 'package:auth_app/domain/auth/email_address.dart';
import 'package:auth_app/domain/auth/password.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepositiry {
  Future<Either<Failure, String>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<Failure, String>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<Failure, String>> signInWithGoogle();
}