// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserProfileEventTearOff {
  const _$UserProfileEventTearOff();

  _NameChanged nameChanged(String userNameStr) {
    return _NameChanged(
      userNameStr,
    );
  }

  _EmailChanged emailChanged(String emailStr) {
    return _EmailChanged(
      emailStr,
    );
  }

  _PasswordChanged passwordChanged(String passwordStr) {
    return _PasswordChanged(
      passwordStr,
    );
  }

  _ApplyPressed applyPressed() {
    return const _ApplyPressed();
  }

  _GoBackPressed goBackPressed() {
    return const _GoBackPressed();
  }
}

/// @nodoc
const $UserProfileEvent = _$UserProfileEventTearOff();

/// @nodoc
mixin _$UserProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userNameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() applyPressed,
    required TResult Function() goBackPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userNameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? applyPressed,
    TResult Function()? goBackPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ApplyPressed value) applyPressed,
    required TResult Function(_GoBackPressed value) goBackPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ApplyPressed value)? applyPressed,
    TResult Function(_GoBackPressed value)? goBackPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
          UserProfileEvent value, $Res Function(UserProfileEvent) then) =
      _$UserProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  final UserProfileEvent _value;
  // ignore: unused_field
  final $Res Function(UserProfileEvent) _then;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String userNameStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? userNameStr = freezed,
  }) {
    return _then(_NameChanged(
      userNameStr == freezed
          ? _value.userNameStr
          : userNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.userNameStr);

  @override
  final String userNameStr;

  @override
  String toString() {
    return 'UserProfileEvent.nameChanged(userNameStr: $userNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.userNameStr, userNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.userNameStr, userNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userNameStr);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userNameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() applyPressed,
    required TResult Function() goBackPressed,
  }) {
    return nameChanged(userNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userNameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? applyPressed,
    TResult Function()? goBackPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(userNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ApplyPressed value) applyPressed,
    required TResult Function(_GoBackPressed value) goBackPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ApplyPressed value)? applyPressed,
    TResult Function(_GoBackPressed value)? goBackPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements UserProfileEvent {
  const factory _NameChanged(String userNameStr) = _$_NameChanged;

  String get userNameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'UserProfileEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userNameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() applyPressed,
    required TResult Function() goBackPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userNameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? applyPressed,
    TResult Function()? goBackPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ApplyPressed value) applyPressed,
    required TResult Function(_GoBackPressed value) goBackPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ApplyPressed value)? applyPressed,
    TResult Function(_GoBackPressed value)? goBackPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements UserProfileEvent {
  const factory _EmailChanged(String emailStr) = _$_EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'UserProfileEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userNameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() applyPressed,
    required TResult Function() goBackPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userNameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? applyPressed,
    TResult Function()? goBackPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ApplyPressed value) applyPressed,
    required TResult Function(_GoBackPressed value) goBackPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ApplyPressed value)? applyPressed,
    TResult Function(_GoBackPressed value)? goBackPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements UserProfileEvent {
  const factory _PasswordChanged(String passwordStr) = _$_PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ApplyPressedCopyWith<$Res> {
  factory _$ApplyPressedCopyWith(
          _ApplyPressed value, $Res Function(_ApplyPressed) then) =
      __$ApplyPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ApplyPressedCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$ApplyPressedCopyWith<$Res> {
  __$ApplyPressedCopyWithImpl(
      _ApplyPressed _value, $Res Function(_ApplyPressed) _then)
      : super(_value, (v) => _then(v as _ApplyPressed));

  @override
  _ApplyPressed get _value => super._value as _ApplyPressed;
}

/// @nodoc

class _$_ApplyPressed implements _ApplyPressed {
  const _$_ApplyPressed();

  @override
  String toString() {
    return 'UserProfileEvent.applyPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ApplyPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userNameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() applyPressed,
    required TResult Function() goBackPressed,
  }) {
    return applyPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userNameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? applyPressed,
    TResult Function()? goBackPressed,
    required TResult orElse(),
  }) {
    if (applyPressed != null) {
      return applyPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ApplyPressed value) applyPressed,
    required TResult Function(_GoBackPressed value) goBackPressed,
  }) {
    return applyPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ApplyPressed value)? applyPressed,
    TResult Function(_GoBackPressed value)? goBackPressed,
    required TResult orElse(),
  }) {
    if (applyPressed != null) {
      return applyPressed(this);
    }
    return orElse();
  }
}

abstract class _ApplyPressed implements UserProfileEvent {
  const factory _ApplyPressed() = _$_ApplyPressed;
}

/// @nodoc
abstract class _$GoBackPressedCopyWith<$Res> {
  factory _$GoBackPressedCopyWith(
          _GoBackPressed value, $Res Function(_GoBackPressed) then) =
      __$GoBackPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GoBackPressedCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$GoBackPressedCopyWith<$Res> {
  __$GoBackPressedCopyWithImpl(
      _GoBackPressed _value, $Res Function(_GoBackPressed) _then)
      : super(_value, (v) => _then(v as _GoBackPressed));

  @override
  _GoBackPressed get _value => super._value as _GoBackPressed;
}

/// @nodoc

class _$_GoBackPressed implements _GoBackPressed {
  const _$_GoBackPressed();

  @override
  String toString() {
    return 'UserProfileEvent.goBackPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GoBackPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userNameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() applyPressed,
    required TResult Function() goBackPressed,
  }) {
    return goBackPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userNameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? applyPressed,
    TResult Function()? goBackPressed,
    required TResult orElse(),
  }) {
    if (goBackPressed != null) {
      return goBackPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ApplyPressed value) applyPressed,
    required TResult Function(_GoBackPressed value) goBackPressed,
  }) {
    return goBackPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ApplyPressed value)? applyPressed,
    TResult Function(_GoBackPressed value)? goBackPressed,
    required TResult orElse(),
  }) {
    if (goBackPressed != null) {
      return goBackPressed(this);
    }
    return orElse();
  }
}

abstract class _GoBackPressed implements UserProfileEvent {
  const factory _GoBackPressed() = _$_GoBackPressed;
}

/// @nodoc
class _$UserProfileStateTearOff {
  const _$UserProfileStateTearOff();

  _UserProfileState call(
      {required UserName userName,
      required EmailAddress emailAddress,
      required Password password,
      required bool nameChanged,
      required bool emailChanged,
      required bool passwordChanged,
      required bool isSubmiting,
      required AutovalidateMode showErrorMessages,
      required Option<Either<AuthFailure, String>> applyFailureOrSuccessOption,
      required bool goBack}) {
    return _UserProfileState(
      userName: userName,
      emailAddress: emailAddress,
      password: password,
      nameChanged: nameChanged,
      emailChanged: emailChanged,
      passwordChanged: passwordChanged,
      isSubmiting: isSubmiting,
      showErrorMessages: showErrorMessages,
      applyFailureOrSuccessOption: applyFailureOrSuccessOption,
      goBack: goBack,
    );
  }
}

/// @nodoc
const $UserProfileState = _$UserProfileStateTearOff();

/// @nodoc
mixin _$UserProfileState {
  UserName get userName => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get nameChanged => throw _privateConstructorUsedError;
  bool get emailChanged => throw _privateConstructorUsedError;
  bool get passwordChanged => throw _privateConstructorUsedError;
  bool get isSubmiting => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, String>> get applyFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get goBack => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileStateCopyWith<UserProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res>;
  $Res call(
      {UserName userName,
      EmailAddress emailAddress,
      Password password,
      bool nameChanged,
      bool emailChanged,
      bool passwordChanged,
      bool isSubmiting,
      AutovalidateMode showErrorMessages,
      Option<Either<AuthFailure, String>> applyFailureOrSuccessOption,
      bool goBack});
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  final UserProfileState _value;
  // ignore: unused_field
  final $Res Function(UserProfileState) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? nameChanged = freezed,
    Object? emailChanged = freezed,
    Object? passwordChanged = freezed,
    Object? isSubmiting = freezed,
    Object? showErrorMessages = freezed,
    Object? applyFailureOrSuccessOption = freezed,
    Object? goBack = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      nameChanged: nameChanged == freezed
          ? _value.nameChanged
          : nameChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      emailChanged: emailChanged == freezed
          ? _value.emailChanged
          : emailChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordChanged: passwordChanged == freezed
          ? _value.passwordChanged
          : passwordChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmiting: isSubmiting == freezed
          ? _value.isSubmiting
          : isSubmiting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      applyFailureOrSuccessOption: applyFailureOrSuccessOption == freezed
          ? _value.applyFailureOrSuccessOption
          : applyFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, String>>,
      goBack: goBack == freezed
          ? _value.goBack
          : goBack // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileStateCopyWith<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  factory _$UserProfileStateCopyWith(
          _UserProfileState value, $Res Function(_UserProfileState) then) =
      __$UserProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserName userName,
      EmailAddress emailAddress,
      Password password,
      bool nameChanged,
      bool emailChanged,
      bool passwordChanged,
      bool isSubmiting,
      AutovalidateMode showErrorMessages,
      Option<Either<AuthFailure, String>> applyFailureOrSuccessOption,
      bool goBack});
}

/// @nodoc
class __$UserProfileStateCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
    implements _$UserProfileStateCopyWith<$Res> {
  __$UserProfileStateCopyWithImpl(
      _UserProfileState _value, $Res Function(_UserProfileState) _then)
      : super(_value, (v) => _then(v as _UserProfileState));

  @override
  _UserProfileState get _value => super._value as _UserProfileState;

  @override
  $Res call({
    Object? userName = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? nameChanged = freezed,
    Object? emailChanged = freezed,
    Object? passwordChanged = freezed,
    Object? isSubmiting = freezed,
    Object? showErrorMessages = freezed,
    Object? applyFailureOrSuccessOption = freezed,
    Object? goBack = freezed,
  }) {
    return _then(_UserProfileState(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      nameChanged: nameChanged == freezed
          ? _value.nameChanged
          : nameChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      emailChanged: emailChanged == freezed
          ? _value.emailChanged
          : emailChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordChanged: passwordChanged == freezed
          ? _value.passwordChanged
          : passwordChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmiting: isSubmiting == freezed
          ? _value.isSubmiting
          : isSubmiting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      applyFailureOrSuccessOption: applyFailureOrSuccessOption == freezed
          ? _value.applyFailureOrSuccessOption
          : applyFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, String>>,
      goBack: goBack == freezed
          ? _value.goBack
          : goBack // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserProfileState implements _UserProfileState {
  const _$_UserProfileState(
      {required this.userName,
      required this.emailAddress,
      required this.password,
      required this.nameChanged,
      required this.emailChanged,
      required this.passwordChanged,
      required this.isSubmiting,
      required this.showErrorMessages,
      required this.applyFailureOrSuccessOption,
      required this.goBack});

  @override
  final UserName userName;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool nameChanged;
  @override
  final bool emailChanged;
  @override
  final bool passwordChanged;
  @override
  final bool isSubmiting;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final Option<Either<AuthFailure, String>> applyFailureOrSuccessOption;
  @override
  final bool goBack;

  @override
  String toString() {
    return 'UserProfileState(userName: $userName, emailAddress: $emailAddress, password: $password, nameChanged: $nameChanged, emailChanged: $emailChanged, passwordChanged: $passwordChanged, isSubmiting: $isSubmiting, showErrorMessages: $showErrorMessages, applyFailureOrSuccessOption: $applyFailureOrSuccessOption, goBack: $goBack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfileState &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.nameChanged, nameChanged) ||
                const DeepCollectionEquality()
                    .equals(other.nameChanged, nameChanged)) &&
            (identical(other.emailChanged, emailChanged) ||
                const DeepCollectionEquality()
                    .equals(other.emailChanged, emailChanged)) &&
            (identical(other.passwordChanged, passwordChanged) ||
                const DeepCollectionEquality()
                    .equals(other.passwordChanged, passwordChanged)) &&
            (identical(other.isSubmiting, isSubmiting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmiting, isSubmiting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.applyFailureOrSuccessOption,
                    applyFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.applyFailureOrSuccessOption,
                    applyFailureOrSuccessOption)) &&
            (identical(other.goBack, goBack) ||
                const DeepCollectionEquality().equals(other.goBack, goBack)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(nameChanged) ^
      const DeepCollectionEquality().hash(emailChanged) ^
      const DeepCollectionEquality().hash(passwordChanged) ^
      const DeepCollectionEquality().hash(isSubmiting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(applyFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(goBack);

  @JsonKey(ignore: true)
  @override
  _$UserProfileStateCopyWith<_UserProfileState> get copyWith =>
      __$UserProfileStateCopyWithImpl<_UserProfileState>(this, _$identity);
}

abstract class _UserProfileState implements UserProfileState {
  const factory _UserProfileState(
      {required UserName userName,
      required EmailAddress emailAddress,
      required Password password,
      required bool nameChanged,
      required bool emailChanged,
      required bool passwordChanged,
      required bool isSubmiting,
      required AutovalidateMode showErrorMessages,
      required Option<Either<AuthFailure, String>> applyFailureOrSuccessOption,
      required bool goBack}) = _$_UserProfileState;

  @override
  UserName get userName => throw _privateConstructorUsedError;
  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get nameChanged => throw _privateConstructorUsedError;
  @override
  bool get emailChanged => throw _privateConstructorUsedError;
  @override
  bool get passwordChanged => throw _privateConstructorUsedError;
  @override
  bool get isSubmiting => throw _privateConstructorUsedError;
  @override
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, String>> get applyFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  bool get goBack => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserProfileStateCopyWith<_UserProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
