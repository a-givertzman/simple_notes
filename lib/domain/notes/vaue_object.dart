import 'package:auth_app/domain/core/entities/value_object.dart';
import 'package:auth_app/domain/core/entities/value_validators.dart';
import 'package:auth_app/domain/core/error/failure.dart';
import 'package:dartz/dartz.dart';

class NoteBody extends ValueObject<String> {
  @override
  final Either<Failure, String> value;

  static int maxLength = 1000;

  factory NoteBody(String input) {
    return NoteBody._(
      validateMaxStringLength(input, maxLength)
        .flatMap((prevoseResult) => validateStringNotEmpty(prevoseResult))
        .flatMap((result) => Right(input))
    );
  }

  const NoteBody._(this.value);
}