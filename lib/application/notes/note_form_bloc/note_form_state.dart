part of 'note_form_bloc.dart';

@freezed
abstract class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    required Note note,
    required bool isEditing,
    required bool isSaving,
    required AutovalidateMode showErrorMessages,
    required Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NoteFormBlocState;

  factory NoteFormState.initial() => NoteFormState(
    note: Note.empty(), 
    isEditing: false, 
    isSaving: false, 
    showErrorMessages: AutovalidateMode.disabled, 
    saveFailureOrSuccessOption: none(),
      // some(left(const NoteFailure.couldNotBeFound(message: 'NoteFailure.couldNotBeFound'))),
  );

  // const factory NoteFormBlocState.loading() = _Loading;
  // const factory NoteFormBlocState.loadSuccess() = _LoadSuccess;
  // const factory NoteFormBlocState.loadFailure() = _LoadFailure;
}
