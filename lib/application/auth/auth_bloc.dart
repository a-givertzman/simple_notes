import 'dart:async';

import 'package:auth_app/domain/auth/i_auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  
  AuthBloc(this._authRepository) : super(const AuthState.initial());

  AuthState get initialState => const AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event,) async* {
    yield* event.map(

      authCheckRequested: (e) async* {
        final userOption =_authRepository.getCurrentUser();
        yield userOption.fold(
          () => const AuthState.unauthenticated(),                // if NONE then unauthenticated
          (domainUser) => const AuthState.authenticated(),        // if SOME then user is authenticated
        );
      },

      signedOut: (e) async* {
        await _authRepository.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}

// 
// run builder
// flutter pub run build_runner watch --delete-conflicting-outputs
// flutter pub run build_runner build --delete-conflicting-outputs
