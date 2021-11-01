import 'dart:async';

import 'package:auth_app/domain/auth/auth_failure.dart';
import 'package:auth_app/domain/auth/email_address.dart';
import 'package:auth_app/domain/auth/i_auth_repository.dart';
import 'package:auth_app/domain/auth/password.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

//
// State maneger Bloc for Sign In form
//
@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthRepository _authRepository;
  
  SignInFormBloc(this._authRepository) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      //
      // On email changed
      emailChanged: (e) async* {
        yield state.copyWith(
          isSubmiting: false,
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      }, 
      //
      // On password changed
      passwordChanged: (e) async* {
        yield state.copyWith(
          isSubmiting: false,
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

          final failureOrSUccess = await _authRepository.registerWithEmailAndPassword(
            emailAddress: state.emailAddress, 
            password: state.password,
          );

          // print( "[BLOCK registerWithEmailAndPasswordPressed] failureOrSUccess:" );
          // print(failureOrSUccess);
          
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

          final failureOrSUccess = await _authRepository.signInWithEmailAndPassword(
            emailAddress: state.emailAddress, 
            password: state.password,
          );
          yield state.copyWith(
            isSubmiting: false,
            authFailureOrSuccessOption: some(failureOrSUccess),
          );
        }

        yield state.copyWith(
          isSubmiting: false,
          showErrorMessages: AutovalidateMode.always,
          authFailureOrSuccessOption: none(),
        );
      }, 
      //
      // Signing in with Google
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmiting: true,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await _authRepository.signInWithGoogle();
        yield state.copyWith(
          isSubmiting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      },
      //
      // Signing in with Facebook
      signInWithFacebookPressed: (e) async* {
        yield state.copyWith(
          isSubmiting: true,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await _authRepository.signInWithFacebook();
        yield state.copyWith(
          isSubmiting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      },
    );
  }
}
