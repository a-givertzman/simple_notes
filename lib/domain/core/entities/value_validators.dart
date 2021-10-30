import 'package:auth_app/domain/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
//
//
//
Either<ValueFailure, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return Right(input);
  } else {
    return Left(
      ValueFailure.exceedingLength(failedValue: input, maxLength: maxLength),
    );
  }
}
//
//
Either<ValueFailure, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return Left(ValueFailure.emptyValueFailure(failedValue: input));
  } else {
    return Right(input);
  }
}
//
//
Either<ValueFailure, String> validateStringSingleLine(
  String input,
) {
  if (input.contains('\n')) {
    return Left(ValueFailure.multylineValueFailure(failedValue: input));
  } else {
    return Right(input);
  }
}
//
//
Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
  KtList<T> input, 
  int maxLength,
) {
  if (input.size <= maxLength) {
    return Right(input);
  } else {
    return Left(
      ValueFailure.listTooLongFailure(failedValue: input, maxLength: maxLength),
    );
  }
}
//
//
Either<ValueFailure, String> validdateEmailAddress(String input) {
  const emailRegexp = r"""^\S+@\S+\.\S+$""";
  String _message;
  //r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegexp).hasMatch(input)) {
    return Right(input);
  } else {
    _message = "Please, enter valid email address";
  }
  return Left(ValueFailure.emailFailure(message: _message));
}
//
//
Either<ValueFailure, String> validdatePassword(String input) {
  const emailRegexp = r"""(?=^.{8,}$)""";
  String _message;
  //r"""(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$""";

  if (RegExp(emailRegexp).hasMatch(input)) {
    return Right(input);
  } else {
    _message = "A password contains at least eight characters, including at least one number and includes both lower and uppercase letters and special characters, for example #, ?, !";
  }
  return Left(ValueFailure.emailFailure(message: _message));
}
//
//
Either<ValueFailure, String> validdateUserName(String input) {
  const nameRegexp = r"""(?=^.{2,}$)""";
  String _message;

  if (RegExp(nameRegexp).hasMatch(input)) {
    return Right(input);
  } else {
    _message = "User name contains at least two characters";
  }
  return Left(ValueFailure.userNameFailure(message: _message));
}
//
//
Either<ValueFailure, String> validdateURL(String input) {
  const nameRegexp = r"""#((https?://|ftp://|www\.|[^\s:=]+@www\.).*?[a-z_\/0-9\-\#=&])(?=(\.|,|;|\?|\!)?("|'|«|»|\[|\s|\r|\n|$))#iS""";
  String _message;

  if (RegExp(nameRegexp).hasMatch(input)) {
    return Right(input);
  } else {
    _message = "Please enter valid url";
  }
  return Left(ValueFailure.userNameFailure(message: _message));
}
