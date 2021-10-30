// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i16;
import 'application/auth/sign_in_form/bloc/sign_in_form_bloc.dart' as _i14;
import 'application/notes/note_form_bloc/note_form_bloc.dart' as _i11;
import 'application/notes/notes_events_bloc/notes_evens_bloc.dart' as _i12;
import 'application/notes/notes_list_bloc/notes_list_bloc.dart' as _i13;
import 'application/user_profile/user_profile_bloc.dart' as _i15;
import 'domain/auth/i_auth_repository.dart' as _i7;
import 'domain/notes/i_note_repository.dart' as _i9;
import 'infrastructure/auth/firebase_auth_repository.dart' as _i8;
import 'infrastructure/core/firebase_injectable.dart' as _i17;
import 'infrastructure/notes/firebase_note_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectable = _$FirebaseInjectable();
  gh.lazySingleton<_i3.FacebookAuth>(() => firebaseInjectable.facebookAuth);
  gh.lazySingleton<_i4.FirebaseAuth>(() => firebaseInjectable.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectable.firebaseFirestore);
  gh.lazySingleton<_i6.GoogleSignIn>(() => firebaseInjectable.googleSignIn);
  gh.lazySingleton<_i7.IAuthRepository>(() => _i8.FirebaseAuthRepository(
      get<_i4.FirebaseAuth>(),
      get<_i6.GoogleSignIn>(),
      get<_i3.FacebookAuth>()));
  gh.lazySingleton<_i9.IFirebaseNoteRepository>(
      () => _i10.FirebaseNoteRepository(get<_i5.FirebaseFirestore>()));
  gh.factory<_i11.NoteFormBloc>(
      () => _i11.NoteFormBloc(get<_i9.IFirebaseNoteRepository>()));
  gh.factory<_i12.NotesEvensBloc>(
      () => _i12.NotesEvensBloc(get<_i9.IFirebaseNoteRepository>()));
  gh.factory<_i13.NotesListBloc>(
      () => _i13.NotesListBloc(get<_i9.IFirebaseNoteRepository>()));
  gh.factory<_i14.SignInFormBloc>(
      () => _i14.SignInFormBloc(get<_i7.IAuthRepository>()));
  gh.factory<_i15.UserProfileBloc>(
      () => _i15.UserProfileBloc(get<_i7.IAuthRepository>()));
  gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(get<_i7.IAuthRepository>()));
  return get;
}

class _$FirebaseInjectable extends _i17.FirebaseInjectable {}
