import 'package:auth_app/application/notes/note_form_bloc/note_form_bloc.dart';
import 'package:auth_app/domain/notes/vaue_object.dart';
import 'package:auth_app/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteBodyField extends StatefulWidget {
  const NoteBodyField({
    Key? key,
  }) : super(key: key);

  @override
  State<NoteBodyField> createState() => _NoteBodyFieldState();
}

class _NoteBodyFieldState extends State<NoteBodyField> {
  final _noteBodyTextContrroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (prev, curr) =>  prev.isEditing != curr.isEditing,
      listener: (context, state) {
        _noteBodyTextContrroller.text = state.note.body.getOrCrush();
      },
      child: Padding(
          padding: const EdgeInsets.all(commonPadding),
          child: TextFormField(
            controller: _noteBodyTextContrroller,
            decoration: const InputDecoration(
              labelText: 'Заметка',
              counterText: '',
            ),
            maxLength: NoteBody.maxLength,
            maxLines: null,
            minLines: 5,
            onChanged: (value) => context
              .read<NoteFormBloc>()
              .add(NoteFormEvent.bodyChanged(value),),
            validator: (_) => context
              .read<NoteFormBloc>()
              .state.note.body.value.fold(
                (f) => f.maybeMap(
                  emptyValueFailure: (f) => 'Поле не может быть пустым',
                  exceedingLength: (f) => 'Максимум ${f.maxLength} символов',
                  orElse: () => null,
                ),
                (r) => null,
              ),
          ),
        ),
    );
  }
}
