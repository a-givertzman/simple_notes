// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i8;
import 'application/auth/sign_in_form/bloc/sign_in_form_bloc.dart' as _i7;
import 'domain/auth/i_auth_repository.dart' as _i5;
import 'infrastructure/auth/firebase_auth_repository.dart' as _i6;
import 'infrastructure/core/firebase_injectable.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectable = _$FirebaseInjectable();
  gh.lazySingleton<_i3.FirebaseAuth>(() => firebaseInjectable.firebaseAuth);
  gh.lazySingleton<_i4.GoogleSignIn>(() => firebaseInjectable.googleSignIn);
  gh.lazySingleton<_i5.IAuthRepositiry>(() => _i6.FirebaseAuthRepository(
      get<_i3.FirebaseAuth>(), get<_i4.GoogleSignIn>()));
  gh.factory<_i7.SignInFormBloc>(
      () => _i7.SignInFormBloc(get<_i5.IAuthRepositiry>()));
  gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(get<_i5.IAuthRepositiry>()));
  return get;
}

class _$FirebaseInjectable extends _i9.FirebaseInjectable {}