import 'package:auth_app/domain/core/error/failure.dart';
import 'package:auth_app/domain/core/entities/value_object.dart';
import 'package:auth_app/domain/core/entities/value_validators.dart';
import 'package:dartz/dartz.dart';


class EmailAddress extends ValueObject<String>{
  @override
  final Either<Failure, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validdateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}