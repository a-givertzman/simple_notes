// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _EmailFailure<T> emailFailure<T>({required T message}) {
    return _EmailFailure<T>(
      message: message,
    );
  }

  _PasswordFailure<T> passwordFailure<T>({required T message}) {
    return _PasswordFailure<T>(
      message: message,
    );
  }

  _UserNameFailure<T> userNameFailure<T>({required T message}) {
    return _UserNameFailure<T>(
      message: message,
    );
  }

  _ExceedingLength<T> exceedingLength<T>(
      {required T failedValue, required int maxLength}) {
    return _ExceedingLength<T>(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }

  _EmptyValueFailure<T> emptyValueFailure<T>({required T failedValue}) {
    return _EmptyValueFailure<T>(
      failedValue: failedValue,
    );
  }

  _MultylineValueFailure<T> multylineValueFailure<T>({required T failedValue}) {
    return _MultylineValueFailure<T>(
      failedValue: failedValue,
    );
  }

  _ListTooLongFailure<T> listTooLongFailure<T>(
      {required T failedValue, required int maxLength}) {
    return _ListTooLongFailure<T>(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T message) emailFailure,
    required TResult Function(T message) passwordFailure,
    required TResult Function(T message) userNameFailure,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) emptyValueFailure,
    required TResult Function(T failedValue) multylineValueFailure,
    required TResult Function(T failedValue, int maxLength) listTooLongFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailFailure<T> value) emailFailure,
    required TResult Function(_PasswordFailure<T> value) passwordFailure,
    required TResult Function(_UserNameFailure<T> value) userNameFailure,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_EmptyValueFailure<T> value) emptyValueFailure,
    required TResult Function(_MultylineValueFailure<T> value)
        multylineValueFailure,
    required TResult Function(_ListTooLongFailure<T> value) listTooLongFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$EmailFailureCopyWith<T, $Res> {
  factory _$EmailFailureCopyWith(
          _EmailFailure<T> value, $Res Function(_EmailFailure<T>) then) =
      __$EmailFailureCopyWithImpl<T, $Res>;
  $Res call({T message});
}

/// @nodoc
class __$EmailFailureCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$EmailFailureCopyWith<T, $Res> {
  __$EmailFailureCopyWithImpl(
      _EmailFailure<T> _value, $Res Function(_EmailFailure<T>) _then)
      : super(_value, (v) => _then(v as _EmailFailure<T>));

  @override
  _EmailFailure<T> get _value => super._value as _EmailFailure<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_EmailFailure<T>(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_EmailFailure<T> implements _EmailFailure<T> {
  const _$_EmailFailure({required this.message});

  @override
  final T message;

  @override
  String toString() {
    return 'ValueFailure<$T>.emailFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailFailure<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$EmailFailureCopyWith<T, _EmailFailure<T>> get copyWith =>
      __$EmailFailureCopyWithImpl<T, _EmailFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T message) emailFailure,
    required TResult Function(T message) passwordFailure,
    required TResult Function(T message) userNameFailure,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) emptyValueFailure,
    required TResult Function(T failedValue) multylineValueFailure,
    required TResult Function(T failedValue, int maxLength) listTooLongFailure,
  }) {
    return emailFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
  }) {
    return emailFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (emailFailure != null) {
      return emailFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailFailure<T> value) emailFailure,
    required TResult Function(_PasswordFailure<T> value) passwordFailure,
    required TResult Function(_UserNameFailure<T> value) userNameFailure,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_EmptyValueFailure<T> value) emptyValueFailure,
    required TResult Function(_MultylineValueFailure<T> value)
        multylineValueFailure,
    required TResult Function(_ListTooLongFailure<T> value) listTooLongFailure,
  }) {
    return emailFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
  }) {
    return emailFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (emailFailure != null) {
      return emailFailure(this);
    }
    return orElse();
  }
}

abstract class _EmailFailure<T> implements ValueFailure<T> {
  const factory _EmailFailure({required T message}) = _$_EmailFailure<T>;

  T get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailFailureCopyWith<T, _EmailFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordFailureCopyWith<T, $Res> {
  factory _$PasswordFailureCopyWith(
          _PasswordFailure<T> value, $Res Function(_PasswordFailure<T>) then) =
      __$PasswordFailureCopyWithImpl<T, $Res>;
  $Res call({T message});
}

/// @nodoc
class __$PasswordFailureCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$PasswordFailureCopyWith<T, $Res> {
  __$PasswordFailureCopyWithImpl(
      _PasswordFailure<T> _value, $Res Function(_PasswordFailure<T>) _then)
      : super(_value, (v) => _then(v as _PasswordFailure<T>));

  @override
  _PasswordFailure<T> get _value => super._value as _PasswordFailure<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_PasswordFailure<T>(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_PasswordFailure<T> implements _PasswordFailure<T> {
  const _$_PasswordFailure({required this.message});

  @override
  final T message;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordFailure<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$PasswordFailureCopyWith<T, _PasswordFailure<T>> get copyWith =>
      __$PasswordFailureCopyWithImpl<T, _PasswordFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T message) emailFailure,
    required TResult Function(T message) passwordFailure,
    required TResult Function(T message) userNameFailure,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) emptyValueFailure,
    required TResult Function(T failedValue) multylineValueFailure,
    required TResult Function(T failedValue, int maxLength) listTooLongFailure,
  }) {
    return passwordFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
  }) {
    return passwordFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (passwordFailure != null) {
      return passwordFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailFailure<T> value) emailFailure,
    required TResult Function(_PasswordFailure<T> value) passwordFailure,
    required TResult Function(_UserNameFailure<T> value) userNameFailure,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_EmptyValueFailure<T> value) emptyValueFailure,
    required TResult Function(_MultylineValueFailure<T> value)
        multylineValueFailure,
    required TResult Function(_ListTooLongFailure<T> value) listTooLongFailure,
  }) {
    return passwordFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
  }) {
    return passwordFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (passwordFailure != null) {
      return passwordFailure(this);
    }
    return orElse();
  }
}

abstract class _PasswordFailure<T> implements ValueFailure<T> {
  const factory _PasswordFailure({required T message}) = _$_PasswordFailure<T>;

  T get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PasswordFailureCopyWith<T, _PasswordFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserNameFailureCopyWith<T, $Res> {
  factory _$UserNameFailureCopyWith(
          _UserNameFailure<T> value, $Res Function(_UserNameFailure<T>) then) =
      __$UserNameFailureCopyWithImpl<T, $Res>;
  $Res call({T message});
}

/// @nodoc
class __$UserNameFailureCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$UserNameFailureCopyWith<T, $Res> {
  __$UserNameFailureCopyWithImpl(
      _UserNameFailure<T> _value, $Res Function(_UserNameFailure<T>) _then)
      : super(_value, (v) => _then(v as _UserNameFailure<T>));

  @override
  _UserNameFailure<T> get _value => super._value as _UserNameFailure<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UserNameFailure<T>(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_UserNameFailure<T> implements _UserNameFailure<T> {
  const _$_UserNameFailure({required this.message});

  @override
  final T message;

  @override
  String toString() {
    return 'ValueFailure<$T>.userNameFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserNameFailure<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$UserNameFailureCopyWith<T, _UserNameFailure<T>> get copyWith =>
      __$UserNameFailureCopyWithImpl<T, _UserNameFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T message) emailFailure,
    required TResult Function(T message) passwordFailure,
    required TResult Function(T message) userNameFailure,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) emptyValueFailure,
    required TResult Function(T failedValue) multylineValueFailure,
    required TResult Function(T failedValue, int maxLength) listTooLongFailure,
  }) {
    return userNameFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
  }) {
    return userNameFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (userNameFailure != null) {
      return userNameFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailFailure<T> value) emailFailure,
    required TResult Function(_PasswordFailure<T> value) passwordFailure,
    required TResult Function(_UserNameFailure<T> value) userNameFailure,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_EmptyValueFailure<T> value) emptyValueFailure,
    required TResult Function(_MultylineValueFailure<T> value)
        multylineValueFailure,
    required TResult Function(_ListTooLongFailure<T> value) listTooLongFailure,
  }) {
    return userNameFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
  }) {
    return userNameFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (userNameFailure != null) {
      return userNameFailure(this);
    }
    return orElse();
  }
}

abstract class _UserNameFailure<T> implements ValueFailure<T> {
  const factory _UserNameFailure({required T message}) = _$_UserNameFailure<T>;

  T get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UserNameFailureCopyWith<T, _UserNameFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExceedingLengthCopyWith<T, $Res> {
  factory _$ExceedingLengthCopyWith(
          _ExceedingLength<T> value, $Res Function(_ExceedingLength<T>) then) =
      __$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int maxLength});
}

/// @nodoc
class __$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ExceedingLengthCopyWith<T, $Res> {
  __$ExceedingLengthCopyWithImpl(
      _ExceedingLength<T> _value, $Res Function(_ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as _ExceedingLength<T>));

  @override
  _ExceedingLength<T> get _value => super._value as _ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(_ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExceedingLength<T> implements _ExceedingLength<T> {
  const _$_ExceedingLength(
      {required this.failedValue, required this.maxLength});

  @override
  final T failedValue;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.maxLength, maxLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxLength, maxLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(maxLength);

  @JsonKey(ignore: true)
  @override
  _$ExceedingLengthCopyWith<T, _ExceedingLength<T>> get copyWith =>
      __$ExceedingLengthCopyWithImpl<T, _ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T message) emailFailure,
    required TResult Function(T message) passwordFailure,
    required TResult Function(T message) userNameFailure,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) emptyValueFailure,
    required TResult Function(T failedValue) multylineValueFailure,
    required TResult Function(T failedValue, int maxLength) listTooLongFailure,
  }) {
    return exceedingLength(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
  }) {
    return exceedingLength?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailFailure<T> value) emailFailure,
    required TResult Function(_PasswordFailure<T> value) passwordFailure,
    required TResult Function(_UserNameFailure<T> value) userNameFailure,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_EmptyValueFailure<T> value) emptyValueFailure,
    required TResult Function(_MultylineValueFailure<T> value)
        multylineValueFailure,
    required TResult Function(_ListTooLongFailure<T> value) listTooLongFailure,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLength<T> implements ValueFailure<T> {
  const factory _ExceedingLength(
      {required T failedValue, required int maxLength}) = _$_ExceedingLength<T>;

  T get failedValue => throw _privateConstructorUsedError;
  int get maxLength => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ExceedingLengthCopyWith<T, _ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyValueFailureCopyWith<T, $Res> {
  factory _$EmptyValueFailureCopyWith(_EmptyValueFailure<T> value,
          $Res Function(_EmptyValueFailure<T>) then) =
      __$EmptyValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$EmptyValueFailureCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$EmptyValueFailureCopyWith<T, $Res> {
  __$EmptyValueFailureCopyWithImpl(
      _EmptyValueFailure<T> _value, $Res Function(_EmptyValueFailure<T>) _then)
      : super(_value, (v) => _then(v as _EmptyValueFailure<T>));

  @override
  _EmptyValueFailure<T> get _value => super._value as _EmptyValueFailure<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_EmptyValueFailure<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_EmptyValueFailure<T> implements _EmptyValueFailure<T> {
  const _$_EmptyValueFailure({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyValueFailure(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmptyValueFailure<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$EmptyValueFailureCopyWith<T, _EmptyValueFailure<T>> get copyWith =>
      __$EmptyValueFailureCopyWithImpl<T, _EmptyValueFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T message) emailFailure,
    required TResult Function(T message) passwordFailure,
    required TResult Function(T message) userNameFailure,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) emptyValueFailure,
    required TResult Function(T failedValue) multylineValueFailure,
    required TResult Function(T failedValue, int maxLength) listTooLongFailure,
  }) {
    return emptyValueFailure(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
  }) {
    return emptyValueFailure?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (emptyValueFailure != null) {
      return emptyValueFailure(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailFailure<T> value) emailFailure,
    required TResult Function(_PasswordFailure<T> value) passwordFailure,
    required TResult Function(_UserNameFailure<T> value) userNameFailure,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_EmptyValueFailure<T> value) emptyValueFailure,
    required TResult Function(_MultylineValueFailure<T> value)
        multylineValueFailure,
    required TResult Function(_ListTooLongFailure<T> value) listTooLongFailure,
  }) {
    return emptyValueFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
  }) {
    return emptyValueFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (emptyValueFailure != null) {
      return emptyValueFailure(this);
    }
    return orElse();
  }
}

abstract class _EmptyValueFailure<T> implements ValueFailure<T> {
  const factory _EmptyValueFailure({required T failedValue}) =
      _$_EmptyValueFailure<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmptyValueFailureCopyWith<T, _EmptyValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MultylineValueFailureCopyWith<T, $Res> {
  factory _$MultylineValueFailureCopyWith(_MultylineValueFailure<T> value,
          $Res Function(_MultylineValueFailure<T>) then) =
      __$MultylineValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$MultylineValueFailureCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$MultylineValueFailureCopyWith<T, $Res> {
  __$MultylineValueFailureCopyWithImpl(_MultylineValueFailure<T> _value,
      $Res Function(_MultylineValueFailure<T>) _then)
      : super(_value, (v) => _then(v as _MultylineValueFailure<T>));

  @override
  _MultylineValueFailure<T> get _value =>
      super._value as _MultylineValueFailure<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_MultylineValueFailure<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_MultylineValueFailure<T> implements _MultylineValueFailure<T> {
  const _$_MultylineValueFailure({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multylineValueFailure(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MultylineValueFailure<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$MultylineValueFailureCopyWith<T, _MultylineValueFailure<T>> get copyWith =>
      __$MultylineValueFailureCopyWithImpl<T, _MultylineValueFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T message) emailFailure,
    required TResult Function(T message) passwordFailure,
    required TResult Function(T message) userNameFailure,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) emptyValueFailure,
    required TResult Function(T failedValue) multylineValueFailure,
    required TResult Function(T failedValue, int maxLength) listTooLongFailure,
  }) {
    return multylineValueFailure(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
  }) {
    return multylineValueFailure?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (multylineValueFailure != null) {
      return multylineValueFailure(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailFailure<T> value) emailFailure,
    required TResult Function(_PasswordFailure<T> value) passwordFailure,
    required TResult Function(_UserNameFailure<T> value) userNameFailure,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_EmptyValueFailure<T> value) emptyValueFailure,
    required TResult Function(_MultylineValueFailure<T> value)
        multylineValueFailure,
    required TResult Function(_ListTooLongFailure<T> value) listTooLongFailure,
  }) {
    return multylineValueFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
  }) {
    return multylineValueFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (multylineValueFailure != null) {
      return multylineValueFailure(this);
    }
    return orElse();
  }
}

abstract class _MultylineValueFailure<T> implements ValueFailure<T> {
  const factory _MultylineValueFailure({required T failedValue}) =
      _$_MultylineValueFailure<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MultylineValueFailureCopyWith<T, _MultylineValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ListTooLongFailureCopyWith<T, $Res> {
  factory _$ListTooLongFailureCopyWith(_ListTooLongFailure<T> value,
          $Res Function(_ListTooLongFailure<T>) then) =
      __$ListTooLongFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int maxLength});
}

/// @nodoc
class __$ListTooLongFailureCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ListTooLongFailureCopyWith<T, $Res> {
  __$ListTooLongFailureCopyWithImpl(_ListTooLongFailure<T> _value,
      $Res Function(_ListTooLongFailure<T>) _then)
      : super(_value, (v) => _then(v as _ListTooLongFailure<T>));

  @override
  _ListTooLongFailure<T> get _value => super._value as _ListTooLongFailure<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(_ListTooLongFailure<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ListTooLongFailure<T> implements _ListTooLongFailure<T> {
  const _$_ListTooLongFailure(
      {required this.failedValue, required this.maxLength});

  @override
  final T failedValue;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLongFailure(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListTooLongFailure<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.maxLength, maxLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxLength, maxLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(maxLength);

  @JsonKey(ignore: true)
  @override
  _$ListTooLongFailureCopyWith<T, _ListTooLongFailure<T>> get copyWith =>
      __$ListTooLongFailureCopyWithImpl<T, _ListTooLongFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T message) emailFailure,
    required TResult Function(T message) passwordFailure,
    required TResult Function(T message) userNameFailure,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) emptyValueFailure,
    required TResult Function(T failedValue) multylineValueFailure,
    required TResult Function(T failedValue, int maxLength) listTooLongFailure,
  }) {
    return listTooLongFailure(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
  }) {
    return listTooLongFailure?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T message)? emailFailure,
    TResult Function(T message)? passwordFailure,
    TResult Function(T message)? userNameFailure,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? emptyValueFailure,
    TResult Function(T failedValue)? multylineValueFailure,
    TResult Function(T failedValue, int maxLength)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (listTooLongFailure != null) {
      return listTooLongFailure(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailFailure<T> value) emailFailure,
    required TResult Function(_PasswordFailure<T> value) passwordFailure,
    required TResult Function(_UserNameFailure<T> value) userNameFailure,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_EmptyValueFailure<T> value) emptyValueFailure,
    required TResult Function(_MultylineValueFailure<T> value)
        multylineValueFailure,
    required TResult Function(_ListTooLongFailure<T> value) listTooLongFailure,
  }) {
    return listTooLongFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
  }) {
    return listTooLongFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailFailure<T> value)? emailFailure,
    TResult Function(_PasswordFailure<T> value)? passwordFailure,
    TResult Function(_UserNameFailure<T> value)? userNameFailure,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_EmptyValueFailure<T> value)? emptyValueFailure,
    TResult Function(_MultylineValueFailure<T> value)? multylineValueFailure,
    TResult Function(_ListTooLongFailure<T> value)? listTooLongFailure,
    required TResult orElse(),
  }) {
    if (listTooLongFailure != null) {
      return listTooLongFailure(this);
    }
    return orElse();
  }
}

abstract class _ListTooLongFailure<T> implements ValueFailure<T> {
  const factory _ListTooLongFailure(
      {required T failedValue,
      required int maxLength}) = _$_ListTooLongFailure<T>;

  T get failedValue => throw _privateConstructorUsedError;
  int get maxLength => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ListTooLongFailureCopyWith<T, _ListTooLongFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
