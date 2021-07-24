import 'dart:async';

import 'package:auth_app/domain/auth/auth_failure.dart';
import 'package:auth_app/domain/auth/email_address.dart';
import 'package:auth_app/domain/auth/i_auth_repository.dart';
import 'package:auth_app/domain/auth/password.dart';
import 'package:auth_app/domain/auth/user_name.dart';
import 'package:auth_app/domain/auth/user_photo_url.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';
part 'user_profile_bloc.freezed.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final IAuthRepository _authRepository;
  
  UserProfileBloc(this._authRepository) : super(UserProfileState.initial());

  UserProfileState initialState = UserProfileState.initial();

  @override
  Stream<UserProfileState> mapEventToState(
    UserProfileEvent event,
  ) async* {
    yield* event.map(

      nameChanged: (e) async* {
        yield state.copyWith(
          isSubmiting: false,
          userName: UserName(e.userNameStr),
          applyFailureOrSuccessOption: none(),
        );
      }, 

      emailChanged: (e) async* {
        yield state.copyWith(
          isSubmiting: false,
          emailAddress: EmailAddress(e.emailStr),
          applyFailureOrSuccessOption: none(),
        );
      }, 

      passwordChanged: (e) async* {
        yield state.copyWith(
          isSubmiting: false,
          password: Password(e.passwordStr),
          applyFailureOrSuccessOption: none(),
        );
      }, 

      applyPressed: (e) async* {
        final isNameValid = state.userName.isValid();
        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        yield state.copyWith(
          isSubmiting: true,
          applyFailureOrSuccessOption: none(),
        );

        if (isEmailValid && isPasswordValid && isNameValid) {
          
          if (state.nameChanged) {
            final failureOrSuccess = await _authRepository.updateProfile(
              displayName: state.userName, 
              photoURL: UserPhotoURL(""),
            );
            yield state.copyWith(
              isSubmiting: false,
              applyFailureOrSuccessOption: some(failureOrSuccess),
            );
          }

          if (state.emailChanged) {
            final failureOrSuccess = await _authRepository.updateEmailAddress(
              emailAddress: state.emailAddress
            );
            yield state.copyWith(
              isSubmiting: false,
              applyFailureOrSuccessOption: some(failureOrSuccess),
            );
          }

          if (state.passwordChanged) {
            final failureOrSuccess = await _authRepository.updatePassword(
              password: state.password
            );
            yield state.copyWith(
              isSubmiting: false,
              applyFailureOrSuccessOption: some(failureOrSuccess),
            );
          }
        }

        yield state.copyWith(
          showErrorMessages: AutovalidateMode.always,
          applyFailureOrSuccessOption: none(),
        );
      }, 

      goBackPressed: (e) async* {
        yield state.copyWith(goBack: true);
      },
    );
  }
}
