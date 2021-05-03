import 'package:auth_app/core/reply/reply.dart';
import 'package:auth_app/domain/auth/email_address.dart';
import 'package:auth_app/domain/auth/password.dart';
import 'package:flutter/foundation.dart';


abstract class IAuthFacade {
  Future<Reply> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Reply> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Reply> signInWithGoogle();
}