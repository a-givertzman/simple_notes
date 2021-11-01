// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotesListEventTearOff {
  const _$NotesListEventTearOff();

  _ListAllStarted listAllStarted() {
    return const _ListAllStarted();
  }

  _ListUncompletedStarted listUncompletedStarted() {
    return const _ListUncompletedStarted();
  }

  _NotesReceived notesReceived(NotesListState notesListState) {
    return _NotesReceived(
      notesListState,
    );
  }
}

/// @nodoc
const $NotesListEvent = _$NotesListEventTearOff();

/// @nodoc
mixin _$NotesListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listAllStarted,
    required TResult Function() listUncompletedStarted,
    required TResult Function(NotesListState notesListState) notesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listAllStarted,
    TResult Function()? listUncompletedStarted,
    TResult Function(NotesListState notesListState)? notesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listAllStarted,
    TResult Function()? listUncompletedStarted,
    TResult Function(NotesListState notesListState)? notesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListAllStarted value) listAllStarted,
    required TResult Function(_ListUncompletedStarted value)
        listUncompletedStarted,
    required TResult Function(_NotesReceived value) notesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ListAllStarted value)? listAllStarted,
    TResult Function(_ListUncompletedStarted value)? listUncompletedStarted,
    TResult Function(_NotesReceived value)? notesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListAllStarted value)? listAllStarted,
    TResult Function(_ListUncompletedStarted value)? listUncompletedStarted,
    TResult Function(_NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesListEventCopyWith<$Res> {
  factory $NotesListEventCopyWith(
          NotesListEvent value, $Res Function(NotesListEvent) then) =
      _$NotesListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotesListEventCopyWithImpl<$Res>
    implements $NotesListEventCopyWith<$Res> {
  _$NotesListEventCopyWithImpl(this._value, this._then);

  final NotesListEvent _value;
  // ignore: unused_field
  final $Res Function(NotesListEvent) _then;
}

/// @nodoc
abstract class _$ListAllStartedCopyWith<$Res> {
  factory _$ListAllStartedCopyWith(
          _ListAllStarted value, $Res Function(_ListAllStarted) then) =
      __$ListAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ListAllStartedCopyWithImpl<$Res>
    extends _$NotesListEventCopyWithImpl<$Res>
    implements _$ListAllStartedCopyWith<$Res> {
  __$ListAllStartedCopyWithImpl(
      _ListAllStarted _value, $Res Function(_ListAllStarted) _then)
      : super(_value, (v) => _then(v as _ListAllStarted));

  @override
  _ListAllStarted get _value => super._value as _ListAllStarted;
}

/// @nodoc

class _$_ListAllStarted implements _ListAllStarted {
  const _$_ListAllStarted();

  @override
  String toString() {
    return 'NotesListEvent.listAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ListAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listAllStarted,
    required TResult Function() listUncompletedStarted,
    required TResult Function(NotesListState notesListState) notesReceived,
  }) {
    return listAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listAllStarted,
    TResult Function()? listUncompletedStarted,
    TResult Function(NotesListState notesListState)? notesReceived,
  }) {
    return listAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listAllStarted,
    TResult Function()? listUncompletedStarted,
    TResult Function(NotesListState notesListState)? notesReceived,
    required TResult orElse(),
  }) {
    if (listAllStarted != null) {
      return listAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListAllStarted value) listAllStarted,
    required TResult Function(_ListUncompletedStarted value)
        listUncompletedStarted,
    required TResult Function(_NotesReceived value) notesReceived,
  }) {
    return listAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ListAllStarted value)? listAllStarted,
    TResult Function(_ListUncompletedStarted value)? listUncompletedStarted,
    TResult Function(_NotesReceived value)? notesReceived,
  }) {
    return listAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListAllStarted value)? listAllStarted,
    TResult Function(_ListUncompletedStarted value)? listUncompletedStarted,
    TResult Function(_NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) {
    if (listAllStarted != null) {
      return listAllStarted(this);
    }
    return orElse();
  }
}

abstract class _ListAllStarted implements NotesListEvent {
  const factory _ListAllStarted() = _$_ListAllStarted;
}

/// @nodoc
abstract class _$ListUncompletedStartedCopyWith<$Res> {
  factory _$ListUncompletedStartedCopyWith(_ListUncompletedStarted value,
          $Res Function(_ListUncompletedStarted) then) =
      __$ListUncompletedStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ListUncompletedStartedCopyWithImpl<$Res>
    extends _$NotesListEventCopyWithImpl<$Res>
    implements _$ListUncompletedStartedCopyWith<$Res> {
  __$ListUncompletedStartedCopyWithImpl(_ListUncompletedStarted _value,
      $Res Function(_ListUncompletedStarted) _then)
      : super(_value, (v) => _then(v as _ListUncompletedStarted));

  @override
  _ListUncompletedStarted get _value => super._value as _ListUncompletedStarted;
}

/// @nodoc

class _$_ListUncompletedStarted implements _ListUncompletedStarted {
  const _$_ListUncompletedStarted();

  @override
  String toString() {
    return 'NotesListEvent.listUncompletedStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ListUncompletedStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listAllStarted,
    required TResult Function() listUncompletedStarted,
    required TResult Function(NotesListState notesListState) notesReceived,
  }) {
    return listUncompletedStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listAllStarted,
    TResult Function()? listUncompletedStarted,
    TResult Function(NotesListState notesListState)? notesReceived,
  }) {
    return listUncompletedStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listAllStarted,
    TResult Function()? listUncompletedStarted,
    TResult Function(NotesListState notesListState)? notesReceived,
    required TResult orElse(),
  }) {
    if (listUncompletedStarted != null) {
      return listUncompletedStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListAllStarted value) listAllStarted,
    required TResult Function(_ListUncompletedStarted value)
        listUncompletedStarted,
    required TResult Function(_NotesReceived value) notesReceived,
  }) {
    return listUncompletedStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ListAllStarted value)? listAllStarted,
    TResult Function(_ListUncompletedStarted value)? listUncompletedStarted,
    TResult Function(_NotesReceived value)? notesReceived,
  }) {
    return listUncompletedStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListAllStarted value)? listAllStarted,
    TResult Function(_ListUncompletedStarted value)? listUncompletedStarted,
    TResult Function(_NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) {
    if (listUncompletedStarted != null) {
      return listUncompletedStarted(this);
    }
    return orElse();
  }
}

abstract class _ListUncompletedStarted implements NotesListEvent {
  const factory _ListUncompletedStarted() = _$_ListUncompletedStarted;
}

/// @nodoc
abstract class _$NotesReceivedCopyWith<$Res> {
  factory _$NotesReceivedCopyWith(
          _NotesReceived value, $Res Function(_NotesReceived) then) =
      __$NotesReceivedCopyWithImpl<$Res>;
  $Res call({NotesListState notesListState});

  $NotesListStateCopyWith<$Res> get notesListState;
}

/// @nodoc
class __$NotesReceivedCopyWithImpl<$Res>
    extends _$NotesListEventCopyWithImpl<$Res>
    implements _$NotesReceivedCopyWith<$Res> {
  __$NotesReceivedCopyWithImpl(
      _NotesReceived _value, $Res Function(_NotesReceived) _then)
      : super(_value, (v) => _then(v as _NotesReceived));

  @override
  _NotesReceived get _value => super._value as _NotesReceived;

  @override
  $Res call({
    Object? notesListState = freezed,
  }) {
    return _then(_NotesReceived(
      notesListState == freezed
          ? _value.notesListState
          : notesListState // ignore: cast_nullable_to_non_nullable
              as NotesListState,
    ));
  }

  @override
  $NotesListStateCopyWith<$Res> get notesListState {
    return $NotesListStateCopyWith<$Res>(_value.notesListState, (value) {
      return _then(_value.copyWith(notesListState: value));
    });
  }
}

/// @nodoc

class _$_NotesReceived implements _NotesReceived {
  const _$_NotesReceived(this.notesListState);

  @override
  final NotesListState notesListState;

  @override
  String toString() {
    return 'NotesListEvent.notesReceived(notesListState: $notesListState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotesReceived &&
            (identical(other.notesListState, notesListState) ||
                other.notesListState == notesListState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notesListState);

  @JsonKey(ignore: true)
  @override
  _$NotesReceivedCopyWith<_NotesReceived> get copyWith =>
      __$NotesReceivedCopyWithImpl<_NotesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listAllStarted,
    required TResult Function() listUncompletedStarted,
    required TResult Function(NotesListState notesListState) notesReceived,
  }) {
    return notesReceived(notesListState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listAllStarted,
    TResult Function()? listUncompletedStarted,
    TResult Function(NotesListState notesListState)? notesReceived,
  }) {
    return notesReceived?.call(notesListState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listAllStarted,
    TResult Function()? listUncompletedStarted,
    TResult Function(NotesListState notesListState)? notesReceived,
    required TResult orElse(),
  }) {
    if (notesReceived != null) {
      return notesReceived(notesListState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListAllStarted value) listAllStarted,
    required TResult Function(_ListUncompletedStarted value)
        listUncompletedStarted,
    required TResult Function(_NotesReceived value) notesReceived,
  }) {
    return notesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ListAllStarted value)? listAllStarted,
    TResult Function(_ListUncompletedStarted value)? listUncompletedStarted,
    TResult Function(_NotesReceived value)? notesReceived,
  }) {
    return notesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListAllStarted value)? listAllStarted,
    TResult Function(_ListUncompletedStarted value)? listUncompletedStarted,
    TResult Function(_NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) {
    if (notesReceived != null) {
      return notesReceived(this);
    }
    return orElse();
  }
}

abstract class _NotesReceived implements NotesListEvent {
  const factory _NotesReceived(NotesListState notesListState) =
      _$_NotesReceived;

  NotesListState get notesListState;
  @JsonKey(ignore: true)
  _$NotesReceivedCopyWith<_NotesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotesListStateTearOff {
  const _$NotesListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadingProgress loadingProgress() {
    return const _LoadingProgress();
  }

  _LoadAllSuccess loadAllSuccess(KtList<Note> notes) {
    return _LoadAllSuccess(
      notes,
    );
  }

  _LoadUncompletedSuccess loadUncompletedSuccess(KtList<Note> notes) {
    return _LoadUncompletedSuccess(
      notes,
    );
  }

  _LoadFailure loadFailure(NoteFailure<dynamic> noteFailure) {
    return _LoadFailure(
      noteFailure,
    );
  }
}

/// @nodoc
const $NotesListState = _$NotesListStateTearOff();

/// @nodoc
mixin _$NotesListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Note> notes) loadAllSuccess,
    required TResult Function(KtList<Note> notes) loadUncompletedSuccess,
    required TResult Function(NoteFailure<dynamic> noteFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadAllSuccess,
    TResult Function(KtList<Note> notes)? loadUncompletedSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadAllSuccess,
    TResult Function(KtList<Note> notes)? loadUncompletedSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadAllSuccess value) loadAllSuccess,
    required TResult Function(_LoadUncompletedSuccess value)
        loadUncompletedSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadAllSuccess value)? loadAllSuccess,
    TResult Function(_LoadUncompletedSuccess value)? loadUncompletedSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadAllSuccess value)? loadAllSuccess,
    TResult Function(_LoadUncompletedSuccess value)? loadUncompletedSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesListStateCopyWith<$Res> {
  factory $NotesListStateCopyWith(
          NotesListState value, $Res Function(NotesListState) then) =
      _$NotesListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotesListStateCopyWithImpl<$Res>
    implements $NotesListStateCopyWith<$Res> {
  _$NotesListStateCopyWithImpl(this._value, this._then);

  final NotesListState _value;
  // ignore: unused_field
  final $Res Function(NotesListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NotesListStateCopyWithImpl<$Res>
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
    return 'NotesListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Note> notes) loadAllSuccess,
    required TResult Function(KtList<Note> notes) loadUncompletedSuccess,
    required TResult Function(NoteFailure<dynamic> noteFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadAllSuccess,
    TResult Function(KtList<Note> notes)? loadUncompletedSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadAllSuccess,
    TResult Function(KtList<Note> notes)? loadUncompletedSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? loadFailure,
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
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadAllSuccess value) loadAllSuccess,
    required TResult Function(_LoadUncompletedSuccess value)
        loadUncompletedSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadAllSuccess value)? loadAllSuccess,
    TResult Function(_LoadUncompletedSuccess value)? loadUncompletedSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadAllSuccess value)? loadAllSuccess,
    TResult Function(_LoadUncompletedSuccess value)? loadUncompletedSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotesListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingProgressCopyWith<$Res> {
  factory _$LoadingProgressCopyWith(
          _LoadingProgress value, $Res Function(_LoadingProgress) then) =
      __$LoadingProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingProgressCopyWithImpl<$Res>
    extends _$NotesListStateCopyWithImpl<$Res>
    implements _$LoadingProgressCopyWith<$Res> {
  __$LoadingProgressCopyWithImpl(
      _LoadingProgress _value, $Res Function(_LoadingProgress) _then)
      : super(_value, (v) => _then(v as _LoadingProgress));

  @override
  _LoadingProgress get _value => super._value as _LoadingProgress;
}

/// @nodoc

class _$_LoadingProgress implements _LoadingProgress {
  const _$_LoadingProgress();

  @override
  String toString() {
    return 'NotesListState.loadingProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Note> notes) loadAllSuccess,
    required TResult Function(KtList<Note> notes) loadUncompletedSuccess,
    required TResult Function(NoteFailure<dynamic> noteFailure) loadFailure,
  }) {
    return loadingProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadAllSuccess,
    TResult Function(KtList<Note> notes)? loadUncompletedSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? loadFailure,
  }) {
    return loadingProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadAllSuccess,
    TResult Function(KtList<Note> notes)? loadUncompletedSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadingProgress != null) {
      return loadingProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadAllSuccess value) loadAllSuccess,
    required TResult Function(_LoadUncompletedSuccess value)
        loadUncompletedSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadingProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadAllSuccess value)? loadAllSuccess,
    TResult Function(_LoadUncompletedSuccess value)? loadUncompletedSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadingProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadAllSuccess value)? loadAllSuccess,
    TResult Function(_LoadUncompletedSuccess value)? loadUncompletedSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadingProgress != null) {
      return loadingProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadingProgress implements NotesListState {
  const factory _LoadingProgress() = _$_LoadingProgress;
}

/// @nodoc
abstract class _$LoadAllSuccessCopyWith<$Res> {
  factory _$LoadAllSuccessCopyWith(
          _LoadAllSuccess value, $Res Function(_LoadAllSuccess) then) =
      __$LoadAllSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Note> notes});
}

/// @nodoc
class __$LoadAllSuccessCopyWithImpl<$Res>
    extends _$NotesListStateCopyWithImpl<$Res>
    implements _$LoadAllSuccessCopyWith<$Res> {
  __$LoadAllSuccessCopyWithImpl(
      _LoadAllSuccess _value, $Res Function(_LoadAllSuccess) _then)
      : super(_value, (v) => _then(v as _LoadAllSuccess));

  @override
  _LoadAllSuccess get _value => super._value as _LoadAllSuccess;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_LoadAllSuccess(
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as KtList<Note>,
    ));
  }
}

/// @nodoc

class _$_LoadAllSuccess implements _LoadAllSuccess {
  const _$_LoadAllSuccess(this.notes);

  @override
  final KtList<Note> notes;

  @override
  String toString() {
    return 'NotesListState.loadAllSuccess(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadAllSuccess &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @JsonKey(ignore: true)
  @override
  _$LoadAllSuccessCopyWith<_LoadAllSuccess> get copyWith =>
      __$LoadAllSuccessCopyWithImpl<_LoadAllSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Note> notes) loadAllSuccess,
    required TResult Function(KtList<Note> notes) loadUncompletedSuccess,
    required TResult Function(NoteFailure<dynamic> noteFailure) loadFailure,
  }) {
    return loadAllSuccess(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadAllSuccess,
    TResult Function(KtList<Note> notes)? loadUncompletedSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? loadFailure,
  }) {
    return loadAllSuccess?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadAllSuccess,
    TResult Function(KtList<Note> notes)? loadUncompletedSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadAllSuccess != null) {
      return loadAllSuccess(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadAllSuccess value) loadAllSuccess,
    required TResult Function(_LoadUncompletedSuccess value)
        loadUncompletedSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadAllSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadAllSuccess value)? loadAllSuccess,
    TResult Function(_LoadUncompletedSuccess value)? loadUncompletedSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadAllSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadAllSuccess value)? loadAllSuccess,
    TResult Function(_LoadUncompletedSuccess value)? loadUncompletedSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadAllSuccess != null) {
      return loadAllSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadAllSuccess implements NotesListState {
  const factory _LoadAllSuccess(KtList<Note> notes) = _$_LoadAllSuccess;

  KtList<Note> get notes;
  @JsonKey(ignore: true)
  _$LoadAllSuccessCopyWith<_LoadAllSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadUncompletedSuccessCopyWith<$Res> {
  factory _$LoadUncompletedSuccessCopyWith(_LoadUncompletedSuccess value,
          $Res Function(_LoadUncompletedSuccess) then) =
      __$LoadUncompletedSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Note> notes});
}

/// @nodoc
class __$LoadUncompletedSuccessCopyWithImpl<$Res>
    extends _$NotesListStateCopyWithImpl<$Res>
    implements _$LoadUncompletedSuccessCopyWith<$Res> {
  __$LoadUncompletedSuccessCopyWithImpl(_LoadUncompletedSuccess _value,
      $Res Function(_LoadUncompletedSuccess) _then)
      : super(_value, (v) => _then(v as _LoadUncompletedSuccess));

  @override
  _LoadUncompletedSuccess get _value => super._value as _LoadUncompletedSuccess;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_LoadUncompletedSuccess(
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as KtList<Note>,
    ));
  }
}

/// @nodoc

class _$_LoadUncompletedSuccess implements _LoadUncompletedSuccess {
  const _$_LoadUncompletedSuccess(this.notes);

  @override
  final KtList<Note> notes;

  @override
  String toString() {
    return 'NotesListState.loadUncompletedSuccess(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadUncompletedSuccess &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @JsonKey(ignore: true)
  @override
  _$LoadUncompletedSuccessCopyWith<_LoadUncompletedSuccess> get copyWith =>
      __$LoadUncompletedSuccessCopyWithImpl<_LoadUncompletedSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Note> notes) loadAllSuccess,
    required TResult Function(KtList<Note> notes) loadUncompletedSuccess,
    required TResult Function(NoteFailure<dynamic> noteFailure) loadFailure,
  }) {
    return loadUncompletedSuccess(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadAllSuccess,
    TResult Function(KtList<Note> notes)? loadUncompletedSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? loadFailure,
  }) {
    return loadUncompletedSuccess?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadAllSuccess,
    TResult Function(KtList<Note> notes)? loadUncompletedSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadUncompletedSuccess != null) {
      return loadUncompletedSuccess(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadAllSuccess value) loadAllSuccess,
    required TResult Function(_LoadUncompletedSuccess value)
        loadUncompletedSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadUncompletedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadAllSuccess value)? loadAllSuccess,
    TResult Function(_LoadUncompletedSuccess value)? loadUncompletedSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadUncompletedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadAllSuccess value)? loadAllSuccess,
    TResult Function(_LoadUncompletedSuccess value)? loadUncompletedSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadUncompletedSuccess != null) {
      return loadUncompletedSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadUncompletedSuccess implements NotesListState {
  const factory _LoadUncompletedSuccess(KtList<Note> notes) =
      _$_LoadUncompletedSuccess;

  KtList<Note> get notes;
  @JsonKey(ignore: true)
  _$LoadUncompletedSuccessCopyWith<_LoadUncompletedSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({NoteFailure<dynamic> noteFailure});

  $NoteFailureCopyWith<dynamic, $Res> get noteFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$NotesListStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? noteFailure = freezed,
  }) {
    return _then(_LoadFailure(
      noteFailure == freezed
          ? _value.noteFailure
          : noteFailure // ignore: cast_nullable_to_non_nullable
              as NoteFailure<dynamic>,
    ));
  }

  @override
  $NoteFailureCopyWith<dynamic, $Res> get noteFailure {
    return $NoteFailureCopyWith<dynamic, $Res>(_value.noteFailure, (value) {
      return _then(_value.copyWith(noteFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.noteFailure);

  @override
  final NoteFailure<dynamic> noteFailure;

  @override
  String toString() {
    return 'NotesListState.loadFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            (identical(other.noteFailure, noteFailure) ||
                other.noteFailure == noteFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Note> notes) loadAllSuccess,
    required TResult Function(KtList<Note> notes) loadUncompletedSuccess,
    required TResult Function(NoteFailure<dynamic> noteFailure) loadFailure,
  }) {
    return loadFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadAllSuccess,
    TResult Function(KtList<Note> notes)? loadUncompletedSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? loadFailure,
  }) {
    return loadFailure?.call(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadAllSuccess,
    TResult Function(KtList<Note> notes)? loadUncompletedSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadAllSuccess value) loadAllSuccess,
    required TResult Function(_LoadUncompletedSuccess value)
        loadUncompletedSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadAllSuccess value)? loadAllSuccess,
    TResult Function(_LoadUncompletedSuccess value)? loadUncompletedSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadAllSuccess value)? loadAllSuccess,
    TResult Function(_LoadUncompletedSuccess value)? loadUncompletedSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements NotesListState {
  const factory _LoadFailure(NoteFailure<dynamic> noteFailure) = _$_LoadFailure;

  NoteFailure<dynamic> get noteFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
