import 'package:auth_app/domain/auth/domain_user.dart';
import 'package:auth_app/domain/auth/user_name.dart';
import 'package:auth_app/domain/auth/user_photo_url.dart';
import 'package:auth_app/domain/core/entities/unique_id.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainExt on User {
    DomainUser toDomainUser() {
      return DomainUser(
        id: UniqueId.fromString(uid), 
        userName: UserName((displayName != null) ? displayName! : ''),
        userPhotoURL: UserPhotoURL(''),
      );
    }
}