import 'package:auth_app/domain/core/entities/value_object.dart';
import 'package:auth_app/domain/core/entities/value_validators.dart';
import 'package:auth_app/domain/core/error/failure.dart';
import 'package:dartz/dartz.dart';


class UserName extends ValueObject<String>{
  @override
  final Either<Failure, String> value;

  factory UserName(String input) {
    return UserName._(
      validdateUserName(input),
    );
  }

  const UserName._(this.value);
}