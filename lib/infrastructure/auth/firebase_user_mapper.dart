import 'package:auth_app/domain/auth/domain_user.dart';
import 'package:auth_app/domain/core/entities/unique_id.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUsetToDomainUser on User {
    DomainUser toDomainUser() {
      return DomainUser(
        id: UniqueId.fromString(uid)
      );
    }
}