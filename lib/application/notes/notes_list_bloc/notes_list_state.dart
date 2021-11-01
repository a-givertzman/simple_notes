part of 'notes_list_bloc.dart';

@freezed
class NotesListState with _$NotesListState {
  const factory NotesListState.initial() =_Initial;
  const factory NotesListState.loadingProgress() = _LoadingProgress;
  const factory NotesListState.loadAllSuccess(KtList<Note> notes) = _LoadAllSuccess;
  const factory NotesListState.loadUncompletedSuccess(KtList<Note> notes) = _LoadUncompletedSuccess;
  const factory NotesListState.loadFailure(NoteFailure noteFailure) = _LoadFailure;

}
