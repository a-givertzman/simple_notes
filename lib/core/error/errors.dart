import 'package:auth_app/core/error/failure.dart';

class UnecpectedValueError extends Error {
  final Failure valueFailure;

  UnecpectedValueError(this.valueFailure);

  @override
  String toString() {
    const comment = 'Value Failure -> terminating.';
    return Error.safeToString('$comment Failure was: $valueFailure');
  }
}