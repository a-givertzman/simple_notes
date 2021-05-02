import 'package:auth_app/core/error/failure.dart';
import 'package:auth_app/core/reply/reply.dart';
import 'package:dartz/dartz.dart';


Reply validdateEmailAddress(String input) {
  const emailRegexp = r"""^\S+@\S+\.\S+$""";
  final _message;
  //r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegexp).hasMatch(input)) {
    return Right(input) as Reply;
  } else {
    _message = "Please, enter valid email address";
  }

  return Left(EmailFailure(_message)) as Reply;
}


Reply validdatePassword(String input) {
  const emailRegexp = r"""(?=^.{8,}$)""";
  final _message;
  //r"""(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$""";

  if (RegExp(emailRegexp).hasMatch(input)) {
    return Right(input) as Reply;
  } else {
    _message = "A password contains at least eight characters, including at least one number and includes both lower and uppercase letters and special characters, for example #, ?, !";
  }

  return Left(EmailFailure(_message)) as Reply;
}