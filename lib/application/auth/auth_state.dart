part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
}
// 
// run builder
// flutter pub run build_runner watch --delete-conflicting-outputs
// flutter pub run build_runner build --delete-conflicting-outputs