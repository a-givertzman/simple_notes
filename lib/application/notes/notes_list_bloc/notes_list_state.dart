part of 'notes_list_bloc.dart';

@freezed
class NotesListState with _$NotesListState {
  const factory NotesListState.initial() = _Initial;
  const factory NotesListState.loadingProgress() = _LoadingProgress;
  const factory NotesListState.loadSuccess(KtList<Note> notes) = _LoadSuccess;
  const factory NotesListState.loadFailure(NoteFailure noteFailure) = _LoadFailure;
}
