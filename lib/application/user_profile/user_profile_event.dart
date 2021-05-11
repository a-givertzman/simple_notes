part of 'user_profile_bloc.dart';

@freezed
class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.nameChanged(String userNameStr) = _NameChanged;
  const factory UserProfileEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory UserProfileEvent.passwordChanged(String passwordStr) = _PasswordChanged;
  const factory UserProfileEvent.applyPressed() = _ApplyPressed;
  const factory UserProfileEvent.goBackPressed() = _GoBackPressed;
}