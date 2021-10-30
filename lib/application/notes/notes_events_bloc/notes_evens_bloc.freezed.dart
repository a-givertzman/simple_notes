// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_evens_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotesEvensEventTearOff {
  const _$NotesEvensEventTearOff();

  _Started deleted(Note note) {
    return _Started(
      note,
    );
  }

  _MakeToDoCompleted makeToDoCompleted(TodoItem todoItem) {
    return _MakeToDoCompleted(
      todoItem,
    );
  }
}

/// @nodoc
const $NotesEvensEvent = _$NotesEvensEventTearOff();

/// @nodoc
mixin _$NotesEvensEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) deleted,
    required TResult Function(TodoItem todoItem) makeToDoCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    TResult Function(TodoItem todoItem)? makeToDoCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    TResult Function(TodoItem todoItem)? makeToDoCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) deleted,
    required TResult Function(_MakeToDoCompleted value) makeToDoCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? deleted,
    TResult Function(_MakeToDoCompleted value)? makeToDoCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? deleted,
    TResult Function(_MakeToDoCompleted value)? makeToDoCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesEvensEventCopyWith<$Res> {
  factory $NotesEvensEventCopyWith(
          NotesEvensEvent value, $Res Function(NotesEvensEvent) then) =
      _$NotesEvensEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotesEvensEventCopyWithImpl<$Res>
    implements $NotesEvensEventCopyWith<$Res> {
  _$NotesEvensEventCopyWithImpl(this._value, this._then);

  final NotesEvensEvent _value;
  // ignore: unused_field
  final $Res Function(NotesEvensEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$NotesEvensEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_Started(
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesEvensEvent.deleted(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Started &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) deleted,
    required TResult Function(TodoItem todoItem) makeToDoCompleted,
  }) {
    return deleted(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    TResult Function(TodoItem todoItem)? makeToDoCompleted,
  }) {
    return deleted?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    TResult Function(TodoItem todoItem)? makeToDoCompleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) deleted,
    required TResult Function(_MakeToDoCompleted value) makeToDoCompleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? deleted,
    TResult Function(_MakeToDoCompleted value)? makeToDoCompleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? deleted,
    TResult Function(_MakeToDoCompleted value)? makeToDoCompleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Started implements NotesEvensEvent {
  const factory _Started(Note note) = _$_Started;

  Note get note;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MakeToDoCompletedCopyWith<$Res> {
  factory _$MakeToDoCompletedCopyWith(
          _MakeToDoCompleted value, $Res Function(_MakeToDoCompleted) then) =
      __$MakeToDoCompletedCopyWithImpl<$Res>;
  $Res call({TodoItem todoItem});

  $TodoItemCopyWith<$Res> get todoItem;
}

/// @nodoc
class __$MakeToDoCompletedCopyWithImpl<$Res>
    extends _$NotesEvensEventCopyWithImpl<$Res>
    implements _$MakeToDoCompletedCopyWith<$Res> {
  __$MakeToDoCompletedCopyWithImpl(
      _MakeToDoCompleted _value, $Res Function(_MakeToDoCompleted) _then)
      : super(_value, (v) => _then(v as _MakeToDoCompleted));

  @override
  _MakeToDoCompleted get _value => super._value as _MakeToDoCompleted;

  @override
  $Res call({
    Object? todoItem = freezed,
  }) {
    return _then(_MakeToDoCompleted(
      todoItem == freezed
          ? _value.todoItem
          : todoItem // ignore: cast_nullable_to_non_nullable
              as TodoItem,
    ));
  }

  @override
  $TodoItemCopyWith<$Res> get todoItem {
    return $TodoItemCopyWith<$Res>(_value.todoItem, (value) {
      return _then(_value.copyWith(todoItem: value));
    });
  }
}

/// @nodoc

class _$_MakeToDoCompleted implements _MakeToDoCompleted {
  const _$_MakeToDoCompleted(this.todoItem);

  @override
  final TodoItem todoItem;

  @override
  String toString() {
    return 'NotesEvensEvent.makeToDoCompleted(todoItem: $todoItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MakeToDoCompleted &&
            (identical(other.todoItem, todoItem) ||
                other.todoItem == todoItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoItem);

  @JsonKey(ignore: true)
  @override
  _$MakeToDoCompletedCopyWith<_MakeToDoCompleted> get copyWith =>
      __$MakeToDoCompletedCopyWithImpl<_MakeToDoCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) deleted,
    required TResult Function(TodoItem todoItem) makeToDoCompleted,
  }) {
    return makeToDoCompleted(todoItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    TResult Function(TodoItem todoItem)? makeToDoCompleted,
  }) {
    return makeToDoCompleted?.call(todoItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    TResult Function(TodoItem todoItem)? makeToDoCompleted,
    required TResult orElse(),
  }) {
    if (makeToDoCompleted != null) {
      return makeToDoCompleted(todoItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) deleted,
    required TResult Function(_MakeToDoCompleted value) makeToDoCompleted,
  }) {
    return makeToDoCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? deleted,
    TResult Function(_MakeToDoCompleted value)? makeToDoCompleted,
  }) {
    return makeToDoCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? deleted,
    TResult Function(_MakeToDoCompleted value)? makeToDoCompleted,
    required TResult orElse(),
  }) {
    if (makeToDoCompleted != null) {
      return makeToDoCompleted(this);
    }
    return orElse();
  }
}

abstract class _MakeToDoCompleted implements NotesEvensEvent {
  const factory _MakeToDoCompleted(TodoItem todoItem) = _$_MakeToDoCompleted;

  TodoItem get todoItem;
  @JsonKey(ignore: true)
  _$MakeToDoCompletedCopyWith<_MakeToDoCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotesEvensStateTearOff {
  const _$NotesEvensStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActiionInProgress actionInProgress() {
    return const _ActiionInProgress();
  }

  _DeleteFailure deleteFailure(NoteFailure<dynamic> noteFailure) {
    return _DeleteFailure(
      noteFailure,
    );
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

  _MakeToDoCompleteFailure makeToDoCompleteFailure(
      NoteFailure<dynamic> noteFailure) {
    return _MakeToDoCompleteFailure(
      noteFailure,
    );
  }

  _MakeToDoCompleteSuccess makeToDoCompleteSuccess() {
    return const _MakeToDoCompleteSuccess();
  }
}

/// @nodoc
const $NotesEvensState = _$NotesEvensStateTearOff();

/// @nodoc
mixin _$NotesEvensState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure<dynamic> noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(NoteFailure<dynamic> noteFailure)
        makeToDoCompleteFailure,
    required TResult Function() makeToDoCompleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActiionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_MakeToDoCompleteFailure value)
        makeToDoCompleteFailure,
    required TResult Function(_MakeToDoCompleteSuccess value)
        makeToDoCompleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesEvensStateCopyWith<$Res> {
  factory $NotesEvensStateCopyWith(
          NotesEvensState value, $Res Function(NotesEvensState) then) =
      _$NotesEvensStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotesEvensStateCopyWithImpl<$Res>
    implements $NotesEvensStateCopyWith<$Res> {
  _$NotesEvensStateCopyWithImpl(this._value, this._then);

  final NotesEvensState _value;
  // ignore: unused_field
  final $Res Function(NotesEvensState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NotesEvensStateCopyWithImpl<$Res>
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
    return 'NotesEvensState.initial()';
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
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure<dynamic> noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(NoteFailure<dynamic> noteFailure)
        makeToDoCompleteFailure,
    required TResult Function() makeToDoCompleteSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
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
    required TResult Function(_ActiionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_MakeToDoCompleteFailure value)
        makeToDoCompleteFailure,
    required TResult Function(_MakeToDoCompleteSuccess value)
        makeToDoCompleteSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotesEvensState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActiionInProgressCopyWith<$Res> {
  factory _$ActiionInProgressCopyWith(
          _ActiionInProgress value, $Res Function(_ActiionInProgress) then) =
      __$ActiionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActiionInProgressCopyWithImpl<$Res>
    extends _$NotesEvensStateCopyWithImpl<$Res>
    implements _$ActiionInProgressCopyWith<$Res> {
  __$ActiionInProgressCopyWithImpl(
      _ActiionInProgress _value, $Res Function(_ActiionInProgress) _then)
      : super(_value, (v) => _then(v as _ActiionInProgress));

  @override
  _ActiionInProgress get _value => super._value as _ActiionInProgress;
}

/// @nodoc

class _$_ActiionInProgress implements _ActiionInProgress {
  const _$_ActiionInProgress();

  @override
  String toString() {
    return 'NotesEvensState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ActiionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure<dynamic> noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(NoteFailure<dynamic> noteFailure)
        makeToDoCompleteFailure,
    required TResult Function() makeToDoCompleteSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActiionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_MakeToDoCompleteFailure value)
        makeToDoCompleteFailure,
    required TResult Function(_MakeToDoCompleteSuccess value)
        makeToDoCompleteSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActiionInProgress implements NotesEvensState {
  const factory _ActiionInProgress() = _$_ActiionInProgress;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({NoteFailure<dynamic> noteFailure});

  $NoteFailureCopyWith<dynamic, $Res> get noteFailure;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$NotesEvensStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object? noteFailure = freezed,
  }) {
    return _then(_DeleteFailure(
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

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.noteFailure);

  @override
  final NoteFailure<dynamic> noteFailure;

  @override
  String toString() {
    return 'NotesEvensState.deleteFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteFailure &&
            (identical(other.noteFailure, noteFailure) ||
                other.noteFailure == noteFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteFailure);

  @JsonKey(ignore: true)
  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure<dynamic> noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(NoteFailure<dynamic> noteFailure)
        makeToDoCompleteFailure,
    required TResult Function() makeToDoCompleteSuccess,
  }) {
    return deleteFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
  }) {
    return deleteFailure?.call(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActiionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_MakeToDoCompleteFailure value)
        makeToDoCompleteFailure,
    required TResult Function(_MakeToDoCompleteSuccess value)
        makeToDoCompleteSuccess,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements NotesEvensState {
  const factory _DeleteFailure(NoteFailure<dynamic> noteFailure) =
      _$_DeleteFailure;

  NoteFailure<dynamic> get noteFailure;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$NotesEvensStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'NotesEvensState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure<dynamic> noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(NoteFailure<dynamic> noteFailure)
        makeToDoCompleteFailure,
    required TResult Function() makeToDoCompleteSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActiionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_MakeToDoCompleteFailure value)
        makeToDoCompleteFailure,
    required TResult Function(_MakeToDoCompleteSuccess value)
        makeToDoCompleteSuccess,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements NotesEvensState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$MakeToDoCompleteFailureCopyWith<$Res> {
  factory _$MakeToDoCompleteFailureCopyWith(_MakeToDoCompleteFailure value,
          $Res Function(_MakeToDoCompleteFailure) then) =
      __$MakeToDoCompleteFailureCopyWithImpl<$Res>;
  $Res call({NoteFailure<dynamic> noteFailure});

  $NoteFailureCopyWith<dynamic, $Res> get noteFailure;
}

/// @nodoc
class __$MakeToDoCompleteFailureCopyWithImpl<$Res>
    extends _$NotesEvensStateCopyWithImpl<$Res>
    implements _$MakeToDoCompleteFailureCopyWith<$Res> {
  __$MakeToDoCompleteFailureCopyWithImpl(_MakeToDoCompleteFailure _value,
      $Res Function(_MakeToDoCompleteFailure) _then)
      : super(_value, (v) => _then(v as _MakeToDoCompleteFailure));

  @override
  _MakeToDoCompleteFailure get _value =>
      super._value as _MakeToDoCompleteFailure;

  @override
  $Res call({
    Object? noteFailure = freezed,
  }) {
    return _then(_MakeToDoCompleteFailure(
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

class _$_MakeToDoCompleteFailure implements _MakeToDoCompleteFailure {
  const _$_MakeToDoCompleteFailure(this.noteFailure);

  @override
  final NoteFailure<dynamic> noteFailure;

  @override
  String toString() {
    return 'NotesEvensState.makeToDoCompleteFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MakeToDoCompleteFailure &&
            (identical(other.noteFailure, noteFailure) ||
                other.noteFailure == noteFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteFailure);

  @JsonKey(ignore: true)
  @override
  _$MakeToDoCompleteFailureCopyWith<_MakeToDoCompleteFailure> get copyWith =>
      __$MakeToDoCompleteFailureCopyWithImpl<_MakeToDoCompleteFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure<dynamic> noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(NoteFailure<dynamic> noteFailure)
        makeToDoCompleteFailure,
    required TResult Function() makeToDoCompleteSuccess,
  }) {
    return makeToDoCompleteFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
  }) {
    return makeToDoCompleteFailure?.call(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
    required TResult orElse(),
  }) {
    if (makeToDoCompleteFailure != null) {
      return makeToDoCompleteFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActiionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_MakeToDoCompleteFailure value)
        makeToDoCompleteFailure,
    required TResult Function(_MakeToDoCompleteSuccess value)
        makeToDoCompleteSuccess,
  }) {
    return makeToDoCompleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
  }) {
    return makeToDoCompleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
    required TResult orElse(),
  }) {
    if (makeToDoCompleteFailure != null) {
      return makeToDoCompleteFailure(this);
    }
    return orElse();
  }
}

abstract class _MakeToDoCompleteFailure implements NotesEvensState {
  const factory _MakeToDoCompleteFailure(NoteFailure<dynamic> noteFailure) =
      _$_MakeToDoCompleteFailure;

  NoteFailure<dynamic> get noteFailure;
  @JsonKey(ignore: true)
  _$MakeToDoCompleteFailureCopyWith<_MakeToDoCompleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MakeToDoCompleteSuccessCopyWith<$Res> {
  factory _$MakeToDoCompleteSuccessCopyWith(_MakeToDoCompleteSuccess value,
          $Res Function(_MakeToDoCompleteSuccess) then) =
      __$MakeToDoCompleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$MakeToDoCompleteSuccessCopyWithImpl<$Res>
    extends _$NotesEvensStateCopyWithImpl<$Res>
    implements _$MakeToDoCompleteSuccessCopyWith<$Res> {
  __$MakeToDoCompleteSuccessCopyWithImpl(_MakeToDoCompleteSuccess _value,
      $Res Function(_MakeToDoCompleteSuccess) _then)
      : super(_value, (v) => _then(v as _MakeToDoCompleteSuccess));

  @override
  _MakeToDoCompleteSuccess get _value =>
      super._value as _MakeToDoCompleteSuccess;
}

/// @nodoc

class _$_MakeToDoCompleteSuccess implements _MakeToDoCompleteSuccess {
  const _$_MakeToDoCompleteSuccess();

  @override
  String toString() {
    return 'NotesEvensState.makeToDoCompleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MakeToDoCompleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure<dynamic> noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(NoteFailure<dynamic> noteFailure)
        makeToDoCompleteFailure,
    required TResult Function() makeToDoCompleteSuccess,
  }) {
    return makeToDoCompleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
  }) {
    return makeToDoCompleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure<dynamic> noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure<dynamic> noteFailure)? makeToDoCompleteFailure,
    TResult Function()? makeToDoCompleteSuccess,
    required TResult orElse(),
  }) {
    if (makeToDoCompleteSuccess != null) {
      return makeToDoCompleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActiionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_MakeToDoCompleteFailure value)
        makeToDoCompleteFailure,
    required TResult Function(_MakeToDoCompleteSuccess value)
        makeToDoCompleteSuccess,
  }) {
    return makeToDoCompleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
  }) {
    return makeToDoCompleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_MakeToDoCompleteFailure value)? makeToDoCompleteFailure,
    TResult Function(_MakeToDoCompleteSuccess value)? makeToDoCompleteSuccess,
    required TResult orElse(),
  }) {
    if (makeToDoCompleteSuccess != null) {
      return makeToDoCompleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _MakeToDoCompleteSuccess implements NotesEvensState {
  const factory _MakeToDoCompleteSuccess() = _$_MakeToDoCompleteSuccess;
}
