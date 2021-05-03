import 'package:equatable/equatable.dart';

//
// General Failures
abstract class Failure extends Equatable {
  Failure([List properties = const <dynamic>[]]) : super();

  List get properties => <dynamic>[];
}

//
// General Email failure
class EmailFailure extends Failure {
  final dynamic message;

  EmailFailure(this.message);

  @override
  List<Object> get props => [message] as List<Object>;
}

//
// General Password failure
class PasswordFailure extends Failure {
  final dynamic message;

  PasswordFailure(this.message);

  @override
  List<Object> get props => [message] as List<Object>;
}

//
// Autentication/registration canceled by user
class AuthCanceledByUserFailure extends Failure {
  final dynamic message;

  AuthCanceledByUserFailure(this.message);

  @override
  List<Object> get props => [message] as List<Object>;
}

//
// Autentication/registration error on server side
class AuthFailureOnServerSide extends Failure {
  final dynamic message;

  AuthFailureOnServerSide(this.message);

  @override
  List<Object> get props => [message] as List<Object>;
}

//
// Registration error Email already in use
class EmailAlreadyInUseFailure extends Failure {
  final dynamic message;

  EmailAlreadyInUseFailure(this.message);

  @override
  List<Object> get props => [message] as List<Object>;
}

//
// Sign in error Invalid Email & password combination
class InvalidEmailAndPasswordFailure extends Failure {
  final dynamic message;

  InvalidEmailAndPasswordFailure(this.message);

  @override
  List<Object> get props => [message] as List<Object>;
}