import 'package:auth_app/domain/notes/i_note_repository.dart';
import 'package:auth_app/domain/notes/note.dart';
import 'package:auth_app/domain/notes/note_failure.dart';
import 'package:auth_app/domain/notes/todo_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notes_evens_bloc.freezed.dart';
part 'notes_evens_event.dart';
part 'notes_evens_state.dart';

@injectable
class NotesEvensBloc extends Bloc<NotesEvensEvent, NotesEvensState> {
  final IFirebaseNoteRepository _iNoteRepository;
  
  NotesEvensBloc(this._iNoteRepository) : super(const NotesEvensState.initial());

  NotesEvensState get initialState => const NotesEvensState.initial();
  
  @override
  Stream<NotesEvensState> mapEventToState(NotesEvensEvent event) async* {
    yield* event.map(
      deleted: (e) async* {
        yield const NotesEvensState.actionInProgress();
        final unitOfFailur = await _iNoteRepository.delete(e.note);
        yield unitOfFailur.fold(
          (failure) => NotesEvensState.deleteFailure(failure), 
          (_) => const NotesEvensState.deleteSuccess(),
        );
      }, 
      makeToDoCompleted: (e) async* {
        yield const NotesEvensState.actionInProgress();
        final unitOfFailur = await _iNoteRepository.makeNoteCompleted(e.todoItem);
        yield unitOfFailur.fold(
          (failure) => NotesEvensState.makeToDoCompleteFailure(failure), 
          (_) => const NotesEvensState.makeToDoCompleteSuccess(),
        );
      },
    );
  }
}
