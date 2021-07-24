import 'package:auth_app/domain/core/error/failure.dart';

class NotAuthenticatedError extends Error {}

class UnecpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnecpectedValueError(this.valueFailure);

  @override
  String toString() {
    const comment = 'Value Failure -> terminating.';
    return Error.safeToString('$comment Failure was: $valueFailure');
  }
}