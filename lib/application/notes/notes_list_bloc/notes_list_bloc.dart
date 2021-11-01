import 'dart:async';

import 'package:auth_app/domain/debug/dprint.dart';
import 'package:auth_app/domain/notes/i_note_repository.dart';
import 'package:auth_app/domain/notes/note.dart';
import 'package:auth_app/domain/notes/note_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'notes_list_bloc.freezed.dart';
part 'notes_list_event.dart';
part 'notes_list_state.dart';

@injectable
class NotesListBloc extends Bloc<NotesListEvent, NotesListState> {
  final IFirebaseNoteRepository _iNoteRepository;
  
  StreamSubscription<Either<NoteFailure<dynamic>, KtList<Note>>>? _noteStreamSubscription;

  NotesListBloc(this._iNoteRepository) : super(const NotesListState.initial());

  @override
  Stream<NotesListState> mapEventToState(NotesListEvent event) async* {
    dPrint.log('[NotesListBloc.mapEventToState] event:');
    dPrint.log(event);
    yield* event.map(
      listAllStarted: (e) async* {
          dPrint.log('[NotesListBloc.listAllStarted]');
          // yield state.copyWith(showUncompleted:);
          yield const NotesListState.loadingProgress();
          await _noteStreamSubscription?.cancel();
          _noteStreamSubscription = _iNoteRepository.watchAll()
            // watchAll() вернет stream и метод listen вернет
            // failureOrNotes и сразу добавит событие notesReceived в BLOC
            .listen((failureOrNotes) =>
                failureOrNotes.fold(
                  (failure) => add(NotesListEvent.notesReceived(
                      NotesListState.loadFailure(failure),
                  ),),
                  (notes) => add(NotesListEvent.notesReceived(
                     NotesListState.loadAllSuccess(notes),
                  ),),
                ),
              // return add(NotesListEvent.notesReceived(failureOrNotes));
              );
          // такая реализация будет бесконечно отправлять события 
          // из _iNoteRepository.watchAll() в BLOC
          // и будет невозможно переключиться на просмотр _iNoteRepository.watchUncompleted()
          // yield* _iNoteRepository.watchAll()
          //   .map((failureOrNotes) => failureOrNotes
          //     .fold(
          //       (failure) => NotesListState.loadFailure(failure), 
          //       (notes) => NotesListState.loadSuccess(notes),
          //     ),
          //   );
      }, 
      listUncompletedStarted: (e) async* {
          dPrint.log('[NotesListBloc.listUncompletedStarted]');
          yield const NotesListState.loadingProgress();
          await _noteStreamSubscription?.cancel();
          _noteStreamSubscription = _iNoteRepository.watchUncompleted()
            .listen(
              (failureOrNotes) {
                return failureOrNotes.fold(
                  (failure) {
                    return add(NotesListEvent.notesReceived(
                      NotesListState.loadFailure(failure),
                    ),);
                  },
                  (notes) {
                    return add(NotesListEvent.notesReceived(
                      NotesListState.loadUncompletedSuccess(notes),
                    ),);
                  },
                );
                // add(NotesListEvent.notesReceived(failureOrNotes));
              }
            );
      },
      notesReceived: (e) async* {
        dPrint.log('[NotesListBloc.notesReceived]');
        yield e.notesListState;
      },
    );
  }

  @override
  Future<void> close() async {
    await _noteStreamSubscription?.cancel();
    return super.close();
  }
}
