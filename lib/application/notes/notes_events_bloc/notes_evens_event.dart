part of 'notes_evens_bloc.dart';

@freezed
class NotesEvensEvent with _$NotesEvensEvent {
  const factory NotesEvensEvent.deleted(Note note) = _Started;
  const factory NotesEvensEvent.makeToDoCompleted(TodoItem todoItem) = _MakeToDoCompleted;
}
