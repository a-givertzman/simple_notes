part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) = _PasswordChanged;
  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() = _RegisterWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() = _SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() = _SignInWithGooglePressed;
}

// 
// run builder
// flutter pub run build_runner watch --delete-conflicting-outputs
// flutter pub run build_runner build --delete-conflicting-outputs