import 'package:auth_app/application/notes/note_form_bloc/note_form_bloc.dart';
import 'package:auth_app/presentation/notes/classes/todo_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:auth_app/presentation/notes/classes/build_context_x.dart';

class AddTodoTile extends StatelessWidget {
  const AddTodoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      listenWhen: (prev, curr) => prev.isEditing != curr.isEditing,
      listener: (context, state) {
        context.formTodos = 
          state.note.todos.value.fold(
            (l) => listOf<TodoItemPrimitive>(), 
            (todoItemlist) => todoItemlist
              .map(
                (todoItem) => TodoItemPrimitive.fromDomain(todoItem),
              ),
          );
      },
      buildWhen: (prev, curr) => prev.note.todos.isFull != curr.note.todos.isFull,
      builder: (context, state) {
        return ListTile(
          enabled: !state.note.todos.isFull,
          leading: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.add),
          ),
          title: const Text(
            'Новый Todo',
          ),
          onTap: () {
            context.formTodos = 
              context.formTodos
                .plusElement(TodoItemPrimitive.empty());
            context.read<NoteFormBloc>()
              .add(NoteFormEvent.todosChanged(
                context.formTodos,
              ),
            );
          },
        );
      },
    );
  }
}
