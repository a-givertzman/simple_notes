
import 'package:auth_app/domain/core/entities/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'domain_user.freezed.dart';

@freezed
abstract class DomainUser with _$DomainUser{
  const factory DomainUser({
    required UniqueId id,
  }) = _DomainUser;
}