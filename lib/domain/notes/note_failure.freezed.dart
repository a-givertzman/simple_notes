// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteFailureTearOff {
  const _$NoteFailureTearOff();

  _Unexpected<T> unexpected<T>({required String message}) {
    return _Unexpected<T>(
      message: message,
    );
  }

  _NoPermission<T> noPermission<T>({required String message}) {
    return _NoPermission<T>(
      message: message,
    );
  }

  _CouldNotBeFound<T> couldNotBeFound<T>({required String message}) {
    return _CouldNotBeFound<T>(
      message: message,
    );
  }
}

/// @nodoc
const $NoteFailure = _$NoteFailureTearOff();

/// @nodoc
mixin _$NoteFailure<T> {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) noPermission,
    required TResult Function(String message) couldNotBeFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? noPermission,
    TResult Function(String message)? couldNotBeFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? noPermission,
    TResult Function(String message)? couldNotBeFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_NoPermission<T> value) noPermission,
    required TResult Function(_CouldNotBeFound<T> value) couldNotBeFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_NoPermission<T> value)? noPermission,
    TResult Function(_CouldNotBeFound<T> value)? couldNotBeFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_NoPermission<T> value)? noPermission,
    TResult Function(_CouldNotBeFound<T> value)? couldNotBeFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFailureCopyWith<T, NoteFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFailureCopyWith<T, $Res> {
  factory $NoteFailureCopyWith(
          NoteFailure<T> value, $Res Function(NoteFailure<T>) then) =
      _$NoteFailureCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class _$NoteFailureCopyWithImpl<T, $Res>
    implements $NoteFailureCopyWith<T, $Res> {
  _$NoteFailureCopyWithImpl(this._value, this._then);

  final NoteFailure<T> _value;
  // ignore: unused_field
  final $Res Function(NoteFailure<T>) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UnexpectedCopyWith<T, $Res>
    implements $NoteFailureCopyWith<T, $Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected<T> value, $Res Function(_Unexpected<T>) then) =
      __$UnexpectedCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<T, $Res>
    extends _$NoteFailureCopyWithImpl<T, $Res>
    implements _$UnexpectedCopyWith<T, $Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected<T> _value, $Res Function(_Unexpected<T>) _then)
      : super(_value, (v) => _then(v as _Unexpected<T>));

  @override
  _Unexpected<T> get _value => super._value as _Unexpected<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Unexpected<T>(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unexpected<T> implements _Unexpected<T> {
  const _$_Unexpected({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'NoteFailure<$T>.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unexpected<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  _$UnexpectedCopyWith<T, _Unexpected<T>> get copyWith =>
      __$UnexpectedCopyWithImpl<T, _Unexpected<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) noPermission,
    required TResult Function(String message) couldNotBeFound,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? noPermission,
    TResult Function(String message)? couldNotBeFound,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? noPermission,
    TResult Function(String message)? couldNotBeFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_NoPermission<T> value) noPermission,
    required TResult Function(_CouldNotBeFound<T> value) couldNotBeFound,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_NoPermission<T> value)? noPermission,
    TResult Function(_CouldNotBeFound<T> value)? couldNotBeFound,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_NoPermission<T> value)? noPermission,
    TResult Function(_CouldNotBeFound<T> value)? couldNotBeFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected<T> implements NoteFailure<T> {
  const factory _Unexpected({required String message}) = _$_Unexpected<T>;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$UnexpectedCopyWith<T, _Unexpected<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoPermissionCopyWith<T, $Res>
    implements $NoteFailureCopyWith<T, $Res> {
  factory _$NoPermissionCopyWith(
          _NoPermission<T> value, $Res Function(_NoPermission<T>) then) =
      __$NoPermissionCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$NoPermissionCopyWithImpl<T, $Res>
    extends _$NoteFailureCopyWithImpl<T, $Res>
    implements _$NoPermissionCopyWith<T, $Res> {
  __$NoPermissionCopyWithImpl(
      _NoPermission<T> _value, $Res Function(_NoPermission<T>) _then)
      : super(_value, (v) => _then(v as _NoPermission<T>));

  @override
  _NoPermission<T> get _value => super._value as _NoPermission<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_NoPermission<T>(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoPermission<T> implements _NoPermission<T> {
  const _$_NoPermission({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'NoteFailure<$T>.noPermission(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoPermission<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  _$NoPermissionCopyWith<T, _NoPermission<T>> get copyWith =>
      __$NoPermissionCopyWithImpl<T, _NoPermission<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) noPermission,
    required TResult Function(String message) couldNotBeFound,
  }) {
    return noPermission(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? noPermission,
    TResult Function(String message)? couldNotBeFound,
  }) {
    return noPermission?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? noPermission,
    TResult Function(String message)? couldNotBeFound,
    required TResult orElse(),
  }) {
    if (noPermission != null) {
      return noPermission(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_NoPermission<T> value) noPermission,
    required TResult Function(_CouldNotBeFound<T> value) couldNotBeFound,
  }) {
    return noPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_NoPermission<T> value)? noPermission,
    TResult Function(_CouldNotBeFound<T> value)? couldNotBeFound,
  }) {
    return noPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_NoPermission<T> value)? noPermission,
    TResult Function(_CouldNotBeFound<T> value)? couldNotBeFound,
    required TResult orElse(),
  }) {
    if (noPermission != null) {
      return noPermission(this);
    }
    return orElse();
  }
}

abstract class _NoPermission<T> implements NoteFailure<T> {
  const factory _NoPermission({required String message}) = _$_NoPermission<T>;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$NoPermissionCopyWith<T, _NoPermission<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CouldNotBeFoundCopyWith<T, $Res>
    implements $NoteFailureCopyWith<T, $Res> {
  factory _$CouldNotBeFoundCopyWith(
          _CouldNotBeFound<T> value, $Res Function(_CouldNotBeFound<T>) then) =
      __$CouldNotBeFoundCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$CouldNotBeFoundCopyWithImpl<T, $Res>
    extends _$NoteFailureCopyWithImpl<T, $Res>
    implements _$CouldNotBeFoundCopyWith<T, $Res> {
  __$CouldNotBeFoundCopyWithImpl(
      _CouldNotBeFound<T> _value, $Res Function(_CouldNotBeFound<T>) _then)
      : super(_value, (v) => _then(v as _CouldNotBeFound<T>));

  @override
  _CouldNotBeFound<T> get _value => super._value as _CouldNotBeFound<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_CouldNotBeFound<T>(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CouldNotBeFound<T> implements _CouldNotBeFound<T> {
  const _$_CouldNotBeFound({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'NoteFailure<$T>.couldNotBeFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CouldNotBeFound<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  _$CouldNotBeFoundCopyWith<T, _CouldNotBeFound<T>> get copyWith =>
      __$CouldNotBeFoundCopyWithImpl<T, _CouldNotBeFound<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) noPermission,
    required TResult Function(String message) couldNotBeFound,
  }) {
    return couldNotBeFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? noPermission,
    TResult Function(String message)? couldNotBeFound,
  }) {
    return couldNotBeFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? noPermission,
    TResult Function(String message)? couldNotBeFound,
    required TResult orElse(),
  }) {
    if (couldNotBeFound != null) {
      return couldNotBeFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_NoPermission<T> value) noPermission,
    required TResult Function(_CouldNotBeFound<T> value) couldNotBeFound,
  }) {
    return couldNotBeFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_NoPermission<T> value)? noPermission,
    TResult Function(_CouldNotBeFound<T> value)? couldNotBeFound,
  }) {
    return couldNotBeFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_NoPermission<T> value)? noPermission,
    TResult Function(_CouldNotBeFound<T> value)? couldNotBeFound,
    required TResult orElse(),
  }) {
    if (couldNotBeFound != null) {
      return couldNotBeFound(this);
    }
    return orElse();
  }
}

abstract class _CouldNotBeFound<T> implements NoteFailure<T> {
  const factory _CouldNotBeFound({required String message}) =
      _$_CouldNotBeFound<T>;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$CouldNotBeFoundCopyWith<T, _CouldNotBeFound<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
