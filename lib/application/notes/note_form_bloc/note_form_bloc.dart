import 'package:auth_app/domain/notes/i_note_repository.dart';
import 'package:auth_app/domain/notes/note.dart';
import 'package:auth_app/domain/notes/note_failure.dart';
import 'package:auth_app/domain/notes/vaue_object.dart';
import 'package:auth_app/presentation/notes/classes/todo_item_presentation_classes.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'note_form_bloc.freezed.dart';
part 'note_form_event.dart';
part 'note_form_state.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final IFirebaseNoteRepository _noteRepository;
  
  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial());

  @override
  Stream<NoteFormState> mapEventToState(NoteFormEvent event) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialNoteOption.fold(
          () => state, 
          (initialNote) => state.copyWith(
            note: initialNote,
            isEditing: true,
          ),
        );
      }, 
      bodyChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
            body: NoteBody(e.bodyStr),
          ),
          saveFailureOrSuccessOption: none(),
        );
      }, 
      colorChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
            color: NoteColor(e.color),
          ),
          saveFailureOrSuccessOption: none(),
        );
      }, 
      todosChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
            todos: List3(e.todos.map((todo) => todo.toDomain())),
          ),
          saveFailureOrSuccessOption: none(),
        );
      }, 
      saved: (e) async* {
        Either<NoteFailure, Unit> failureOrSuccess = right(unit);
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );
        if (state.note.failureOption.isNone()) {
          if (state.isEditing) {
            failureOrSuccess = await _noteRepository.update(state.note);
          } else {
            failureOrSuccess = await _noteRepository.create(state.note);
          }
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: AutovalidateMode.always,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
