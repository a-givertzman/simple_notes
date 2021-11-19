import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auth_app/application/notes/note_form_bloc/note_form_bloc.dart';
import 'package:auth_app/presentation/notes/classes/todo_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';
import 'package:auth_app/presentation/notes/classes/build_context_x.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (prev, curr) => prev.note.todos.isFull != curr.note.todos.isFull,
      listener: (context, state) {
         if (state.note.todos.isFull) {
           FlushbarHelper.createAction(
             message: 'Пример реализации платного функционала...',
             button: TextButton(
               onPressed: () {}, 
               child: const Text(
                 'купить',
                 style: TextStyle(color: Colors.yellow),
                ),
              ),
              duration: const Duration(seconds: 5),
           ).show(context);
         }
      },
      child: Consumer<FormTodos>(
        builder: (context, formTodos, child) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: formTodos.value.size,
            itemBuilder: (context, index) {
              return TodoTile(
                index: index,
              );
            }
          );
        },
      ),
    );
  }
}

class TodoTile extends StatefulWidget {
  final int index;
  const TodoTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  _TodoTileState createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  // final TodoItemPrimitive item;
  @override
  Widget build(BuildContext context) {
    final todo = context.formTodos[widget.index];
    return ListTile(
      leading: Checkbox(
        value: todo.done, 
        onChanged: (value) {
          // todo.copyWith(done: value != null ? value : false);
          context.formTodos = context.formTodos
            .map(
              (listTodo) => listTodo == todo 
                ? todo.copyWith(done: value ?? false)
                : listTodo,
            );
          context.read<NoteFormBloc>().add(
            NoteFormEvent.todosChanged(context.formTodos),
          );
        },
      ),
      title: Text(todo.name),
    );
  }
}
