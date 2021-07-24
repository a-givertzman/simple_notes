import 'package:freezed_annotation/freezed_annotation.dart';
//
part 'auth_failure.freezed.dart';
//
//
// Authentication failures
@freezed
abstract class AuthFailure<T> with _$AuthFailure<T> {
  //
  // Autentication/registration canceled by user
  const factory AuthFailure.authCanceledByUserFailure({
    required String message,
  }) = _AuthCanceledByUserFailure<T>;
  //
  // Autentication/registration error on server side
  const factory AuthFailure.authFailureOnServerSide({
    required String message,
  }) = _AuthFailureOnServerSide<T>;
  //
  // Registration error Email already in use
  const factory AuthFailure.emailAlreadyInUseFailure({
    required String message,
  }) = _EmailAlreadyInUseFailure<T>;
  //
  // Sign in error Invalid Email & password combination
  const factory AuthFailure.invalidEmailAndPasswordFailure({
    required String message,
  }) = _InvalidEmailAndPasswordFailure<T>;
}
