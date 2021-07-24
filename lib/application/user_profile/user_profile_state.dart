part of 'user_profile_bloc.dart';

// 
// run builder
// flutter pub run build_runner watch --delete-conflicting-outputs
// flutter pub run build_runner build --delete-conflicting-outputs
//
// State maneger Bloc for User Profile form
//
@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState({
    required UserName userName,
    required EmailAddress emailAddress,
    required Password password,
    required bool nameChanged,
    required bool emailChanged,
    required bool passwordChanged,
    required bool isSubmiting,
    required AutovalidateMode showErrorMessages,
    required Option<Either<AuthFailure, String>> applyFailureOrSuccessOption,
    required bool goBack,
  }) = _UserProfileState;

  factory UserProfileState.initial() => UserProfileState(
    userName: UserName(''),
    emailAddress: EmailAddress(''),
    password: Password(''),
    nameChanged: false,
    emailChanged: false,
    passwordChanged: false,
    isSubmiting: false,
    showErrorMessages: AutovalidateMode.disabled,
    applyFailureOrSuccessOption: none(),
    goBack: false,
  );
}
