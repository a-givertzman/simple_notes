import 'package:dartz/dartz.dart';
import 'package:auth_app/domain/core/error/failure.dart';
import 'package:auth_app/domain/core/entities/value_object.dart';
import 'package:auth_app/domain/core/entities/value_validators.dart';


class Password extends ValueObject<String>{
  @override
  final Either<Failure, String> value;

  factory Password(String input) {
    return Password._(
      validdatePassword(input),
    );
  }

  const Password._(this.value);
}