
import 'package:auth_app/domain/auth/user_name.dart';
import 'package:auth_app/domain/auth/user_photo_url.dart';
import 'package:auth_app/domain/core/entities/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'domain_user.freezed.dart';

@freezed
abstract class DomainUser with _$DomainUser{
  const factory DomainUser({
    required UniqueId id,
    required UserName userName,
    required UserPhotoURL userPhotoURL,
  }) = _DomainUser;
}