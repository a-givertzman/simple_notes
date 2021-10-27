part of 'sign_in_form_bloc.dart';

// 
// run builder
// flutter pub run build_runner watch --delete-conflicting-outputs
// flutter pub run build_runner build --delete-conflicting-outputs
//
@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmiting,
    required AutovalidateMode showErrorMessages,
    required Option<Either<AuthFailure, String>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
    emailAddress: EmailAddress(''),
    password: Password(''),
    isSubmiting: false,
    showErrorMessages: AutovalidateMode.disabled,
    authFailureOrSuccessOption: none(),  
  );
}
