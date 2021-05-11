import 'package:equatable/equatable.dart';

//
// General Failures
abstract class Failure extends Equatable {
  const Failure() : super();

  List<Object?> get properties => <dynamic>[];
}

//
// General Email failure
class EmailFailure extends Failure {
  final dynamic message;

  const EmailFailure(this.message);

  @override
  List<Object?> get props => [message];
}

//
// General Password failure
class PasswordFailure extends Failure {
  final dynamic message;

  const PasswordFailure(this.message);

  @override
  List<Object?> get props => [message];
}

//
// General User Name failure
class UserNameFailure extends Failure {
  final dynamic message;

  const UserNameFailure(this.message);

  @override
  List<Object?> get props => [message];
}

//
// Autentication/registration canceled by user
class AuthCanceledByUserFailure extends Failure {
  final dynamic message;

  const AuthCanceledByUserFailure(this.message);

  @override
  List<Object?> get props => [message];
}

//
// Autentication/registration error on server side
class AuthFailureOnServerSide extends Failure {
  final dynamic message;

  const AuthFailureOnServerSide(this.message);

  @override
  List<Object?> get props => [message];
}

//
// Registration error Email already in use
class EmailAlreadyInUseFailure extends Failure {
  final dynamic message;

  const EmailAlreadyInUseFailure(this.message);

  @override
  List<Object?> get props => [message];
}

//
// Sign in error Invalid Email & password combination
class InvalidEmailAndPasswordFailure extends Failure {
  final dynamic message;

  const InvalidEmailAndPasswordFailure(this.message);

  @override
  List<Object?> get props => [message];
}