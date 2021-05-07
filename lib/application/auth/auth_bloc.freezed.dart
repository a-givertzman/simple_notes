// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _CheckSignedIn checkSignedIn() {
    return const _CheckSignedIn();
  }

  _SigningOut signingOut() {
    return const _SigningOut();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSignedIn,
    required TResult Function() signingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSignedIn,
    TResult Function()? signingOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSignedIn value) checkSignedIn,
    required TResult Function(_SigningOut value) signingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSignedIn value)? checkSignedIn,
    TResult Function(_SigningOut value)? signingOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$CheckSignedInCopyWith<$Res> {
  factory _$CheckSignedInCopyWith(
          _CheckSignedIn value, $Res Function(_CheckSignedIn) then) =
      __$CheckSignedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckSignedInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$CheckSignedInCopyWith<$Res> {
  __$CheckSignedInCopyWithImpl(
      _CheckSignedIn _value, $Res Function(_CheckSignedIn) _then)
      : super(_value, (v) => _then(v as _CheckSignedIn));

  @override
  _CheckSignedIn get _value => super._value as _CheckSignedIn;
}

/// @nodoc

class _$_CheckSignedIn implements _CheckSignedIn {
  const _$_CheckSignedIn();

  @override
  String toString() {
    return 'AuthEvent.checkSignedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckSignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSignedIn,
    required TResult Function() signingOut,
  }) {
    return checkSignedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSignedIn,
    TResult Function()? signingOut,
    required TResult orElse(),
  }) {
    if (checkSignedIn != null) {
      return checkSignedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSignedIn value) checkSignedIn,
    required TResult Function(_SigningOut value) signingOut,
  }) {
    return checkSignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSignedIn value)? checkSignedIn,
    TResult Function(_SigningOut value)? signingOut,
    required TResult orElse(),
  }) {
    if (checkSignedIn != null) {
      return checkSignedIn(this);
    }
    return orElse();
  }
}

abstract class _CheckSignedIn implements AuthEvent {
  const factory _CheckSignedIn() = _$_CheckSignedIn;
}

/// @nodoc
abstract class _$SigningOutCopyWith<$Res> {
  factory _$SigningOutCopyWith(
          _SigningOut value, $Res Function(_SigningOut) then) =
      __$SigningOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SigningOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$SigningOutCopyWith<$Res> {
  __$SigningOutCopyWithImpl(
      _SigningOut _value, $Res Function(_SigningOut) _then)
      : super(_value, (v) => _then(v as _SigningOut));

  @override
  _SigningOut get _value => super._value as _SigningOut;
}

/// @nodoc

class _$_SigningOut implements _SigningOut {
  const _$_SigningOut();

  @override
  String toString() {
    return 'AuthEvent.signingOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SigningOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSignedIn,
    required TResult Function() signingOut,
  }) {
    return signingOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSignedIn,
    TResult Function()? signingOut,
    required TResult orElse(),
  }) {
    if (signingOut != null) {
      return signingOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSignedIn value) checkSignedIn,
    required TResult Function(_SigningOut value) signingOut,
  }) {
    return signingOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSignedIn value)? checkSignedIn,
    TResult Function(_SigningOut value)? signingOut,
    required TResult orElse(),
  }) {
    if (signingOut != null) {
      return signingOut(this);
    }
    return orElse();
  }
}

abstract class _SigningOut implements AuthEvent {
  const factory _SigningOut() = _$_SigningOut;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Signed signed() {
    return const _Signed();
  }

  _UnSigned unSigned() {
    return const _UnSigned();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signed,
    required TResult Function() unSigned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signed,
    TResult Function()? unSigned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Signed value) signed,
    required TResult Function(_UnSigned value) unSigned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Signed value)? signed,
    TResult Function(_UnSigned value)? unSigned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signed,
    required TResult Function() unSigned,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signed,
    TResult Function()? unSigned,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Signed value) signed,
    required TResult Function(_UnSigned value) unSigned,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Signed value)? signed,
    TResult Function(_UnSigned value)? unSigned,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SignedCopyWith<$Res> {
  factory _$SignedCopyWith(_Signed value, $Res Function(_Signed) then) =
      __$SignedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$SignedCopyWith<$Res> {
  __$SignedCopyWithImpl(_Signed _value, $Res Function(_Signed) _then)
      : super(_value, (v) => _then(v as _Signed));

  @override
  _Signed get _value => super._value as _Signed;
}

/// @nodoc

class _$_Signed implements _Signed {
  const _$_Signed();

  @override
  String toString() {
    return 'AuthState.signed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Signed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signed,
    required TResult Function() unSigned,
  }) {
    return signed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signed,
    TResult Function()? unSigned,
    required TResult orElse(),
  }) {
    if (signed != null) {
      return signed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Signed value) signed,
    required TResult Function(_UnSigned value) unSigned,
  }) {
    return signed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Signed value)? signed,
    TResult Function(_UnSigned value)? unSigned,
    required TResult orElse(),
  }) {
    if (signed != null) {
      return signed(this);
    }
    return orElse();
  }
}

abstract class _Signed implements AuthState {
  const factory _Signed() = _$_Signed;
}

/// @nodoc
abstract class _$UnSignedCopyWith<$Res> {
  factory _$UnSignedCopyWith(_UnSigned value, $Res Function(_UnSigned) then) =
      __$UnSignedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnSignedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnSignedCopyWith<$Res> {
  __$UnSignedCopyWithImpl(_UnSigned _value, $Res Function(_UnSigned) _then)
      : super(_value, (v) => _then(v as _UnSigned));

  @override
  _UnSigned get _value => super._value as _UnSigned;
}

/// @nodoc

class _$_UnSigned implements _UnSigned {
  const _$_UnSigned();

  @override
  String toString() {
    return 'AuthState.unSigned()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnSigned);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signed,
    required TResult Function() unSigned,
  }) {
    return unSigned();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signed,
    TResult Function()? unSigned,
    required TResult orElse(),
  }) {
    if (unSigned != null) {
      return unSigned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Signed value) signed,
    required TResult Function(_UnSigned value) unSigned,
  }) {
    return unSigned(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Signed value)? signed,
    TResult Function(_UnSigned value)? unSigned,
    required TResult orElse(),
  }) {
    if (unSigned != null) {
      return unSigned(this);
    }
    return orElse();
  }
}

abstract class _UnSigned implements AuthState {
  const factory _UnSigned() = _$_UnSigned;
}
