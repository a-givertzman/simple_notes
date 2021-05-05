// run this command in project folder in terminal to reconfigure Bloc
// flutter pub run build_runner watch --delete-conflicting-outputs
// flutter pub run build_runner build

import 'dart:async';

import 'package:auth_app/domain/core/error/failure.dart';
import 'package:auth_app/domain/auth/email_address.dart';
import 'package:auth_app/domain/auth/i_auth_repository.dart';
import 'package:auth_app/domain/auth/password.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthRepositiry _authFacade;
  
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      //
      // On email changed
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      }, 
      //
      // On password changed
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      //
      // Registering with email and password
      // TODO Have some code duplication here, needs to be refactored
      registerWithEmailAndPasswordPressed: (e) async* {
        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            isSubmiting: true,
            authFailureOrSuccessOption: none(),
          );

          final failureOrSUccess = await _authFacade.registerWithEmailAndPassword(
            emailAddress: state.emailAddress, 
            password: state.password,
          );
          yield state.copyWith(
            isSubmiting: false,
            authFailureOrSuccessOption: some(failureOrSUccess),
          );
        }

        yield state.copyWith(
          showErrorMessages: AutovalidateMode.always,
          authFailureOrSuccessOption: none(),
        );
      }, 
      //
      // Signing in with email and password
      // TODO Have some code duplication here, needs to be refactored
      signInWithEmailAndPasswordPressed: (e) async* {
        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            isSubmiting: true,
            authFailureOrSuccessOption: none(),
          );

          final failureOrSUccess = await _authFacade.registerWithEmailAndPassword(
            emailAddress: state.emailAddress, 
            password: state.password,
          );
          yield state.copyWith(
            isSubmiting: false,
            authFailureOrSuccessOption: some(failureOrSUccess),
          );
        }

        yield state.copyWith(
          showErrorMessages: AutovalidateMode.always,
          authFailureOrSuccessOption: none(),
        );      }, 
      //
      // Signing in with Google
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmiting: true,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmiting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      },
    );
  }
}
