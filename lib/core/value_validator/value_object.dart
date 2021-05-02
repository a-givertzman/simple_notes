import 'package:auth_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';


@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<Failure, T> get value;

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return (o is ValueObject<T>) && (o.value == value);
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'Value($value)';
  }
}