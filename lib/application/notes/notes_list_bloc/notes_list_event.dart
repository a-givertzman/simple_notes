part of 'notes_list_bloc.dart';

@freezed
abstract class NotesListEvent with _$NotesListEvent {
  const factory NotesListEvent.listAllStarted() = _ListAllStarted;
  const factory NotesListEvent.listUncompletedStarted() = _ListUncompletedStarted;
  const factory NotesListEvent.notesReceived(
    Either<NoteFailure<dynamic>, KtList<Note>> failureOrNotes,
  ) = _NotesReceived;
}
