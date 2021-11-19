import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auth_app/application/notes/note_form_bloc/note_form_bloc.dart';
import 'package:auth_app/domain/debug/dprint.dart';
import 'package:auth_app/domain/notes/note.dart';
import 'package:auth_app/injection.dart';
import 'package:auth_app/presentation/core/constants.dart';
import 'package:auth_app/presentation/core/widgets/savingIn_pogress_overlay.dart';
import 'package:auth_app/presentation/notes/note_form/widgets/note_body_field.dart';
import 'package:auth_app/presentation/notes/note_form/widgets/note_color_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteFormPage extends StatelessWidget {
  final Note? note;
  const NoteFormPage({
    Key? key, 
    required this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NoteFormBloc>()
        ..add(
          NoteFormEvent.initialized(optionOf(note)),
        ),
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
        listenWhen:(prev, curr) =>
          prev.saveFailureOrSuccessOption != curr.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},   // if Option is none() ничего не происходит и ничего не делаем
            (either) => either.fold(
              (failure) {   // если ошибка при сохранении
                FlushbarHelper.createError(
                  duration: flushBarDuration,
                  message: failure.message,
                ).show(context);
              }, 
              (_) {         // если сохранено успешно
                AutoRouter.of(context).popUntilRouteWithName('NotesOverviewPageRoute');
              },
            ),
          );
        },
        buildWhen: (prev, curr) => prev.isSaving != curr.isSaving,
        builder:(context, state) {
          return Stack(
            children: [
              NoteFormScafold(note: note),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class NoteFormScafold extends StatelessWidget {
  const NoteFormScafold({
    Key? key,
    required Note? note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NoteFormBloc, NoteFormState>(
          buildWhen:(prev, curr) => prev.isEditing != curr.isEditing,
          builder:(context, state) {
            return Text(state.isEditing
              ? 'Редактировать...'
              : 'Новая заметка',
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              dPrint.log('Save button clicked');
              context.read<NoteFormBloc>().add(
                const NoteFormEvent.saved(),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<NoteFormBloc, NoteFormState>(
        buildWhen: (prev, curr) => prev.showErrorMessages != curr.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessages,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  NoteBodyField(note: state.note),
                  NoteColorField()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
