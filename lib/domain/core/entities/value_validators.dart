import 'package:auth_app/domain/core/error/failure.dart';
import 'package:dartz/dartz.dart';


Either<Failure, String> validdateEmailAddress(String input) {
  const emailRegexp = r"""^\S+@\S+\.\S+$""";
  dynamic _message;
  //r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegexp).hasMatch(input)) {
    return Right(input);
  } else {
    _message = "Please, enter valid email address";
  }

  return Left(EmailFailure(_message));
}


Either<Failure, String> validdatePassword(String input) {
  const emailRegexp = r"""(?=^.{8,}$)""";
  dynamic _message;
  //r"""(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$""";

  if (RegExp(emailRegexp).hasMatch(input)) {
    return Right(input);
  } else {
    _message = "A password contains at least eight characters, including at least one number and includes both lower and uppercase letters and special characters, for example #, ?, !";
  }

  return Left(EmailFailure(_message));
}