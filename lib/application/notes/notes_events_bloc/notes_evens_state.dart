part of 'notes_evens_bloc.dart';

@freezed
abstract class NotesEvensState with _$NotesEvensState {
  const factory NotesEvensState.initial() = _Initial;
  const factory NotesEvensState.actionInProgress() = _ActiionInProgress;
  const factory NotesEvensState.deleteFailure(NoteFailure noteFailure) = _DeleteFailure;
  const factory NotesEvensState.deleteSuccess() = _DeleteSuccess;
  const factory NotesEvensState.makeToDoCompleteFailure(NoteFailure noteFailure) = _MakeToDoCompleteFailure;
  const factory NotesEvensState.makeToDoCompleteSuccess() = _MakeToDoCompleteSuccess;
}
