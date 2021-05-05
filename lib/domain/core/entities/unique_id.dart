import 'package:auth_app/domain/core/entities/value_object.dart';
import 'package:auth_app/domain/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

class UniqueId extends ValueObject<String> {
  @override
  final Either<Failure, String> value;

  factory UniqueId(String input) {
    return UniqueId._(
      Right(const Uuid().v1()),
    );
  }

  factory UniqueId.fromString(String uniqueId) {
    return UniqueId._(
      Right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}