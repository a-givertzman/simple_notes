import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auth_app/application/notes/note_form_bloc/note_form_bloc.dart';
import 'package:auth_app/domain/notes/vaue_object.dart';
import 'package:auth_app/presentation/core/dialogs/delete_dialog.dart';
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
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: formTodos.value.size,
            itemBuilder: (context, index) {
              return TodoTile(
                key: ValueKey(context.formTodos[index].id.getOrCrush()),
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
  @override
  Widget build(BuildContext context) {
    final todo = context.formTodos.getOrElse(widget.index, (_) => TodoItemPrimitive.empty());
    return Dismissible(
      key: Key( todo.id.getOrCrush() ),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) => showDeleteDialog(
          context: context, 
          title: const Text('Удалить задачу?'), 
          content: Text(todo.name),
      ),
      onDismissed:(direction) {
        context.formTodos = context.formTodos.minusElement(todo);
        context.read<NoteFormBloc>().add(
          NoteFormEvent.todosChanged(context.formTodos),
        );
      },
      background: Container(
        color: Colors.red,
        child: const Icon(Icons.delete,),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ListTile(
          trailing: const Icon(Icons.list_rounded),
          leading: Checkbox(
            value: todo.done, 
            onChanged: (value) {
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
          title: TextFormField(
            initialValue: todo.name,
            decoration: const InputDecoration(
              hintText: 'Задача',
              counterText: '',
              border: InputBorder.none,
            ),
            maxLength: TodoName.maxLength,
            onChanged: (value) {
              context.formTodos = context.formTodos
                .map(
                  (listTodo) => listTodo == todo 
                    ? todo.copyWith(name: value)
                    : listTodo,
                );
              context.read<NoteFormBloc>().add(
                NoteFormEvent.todosChanged(context.formTodos),
              );
            },
            validator: (_) {
              return context
                .read<NoteFormBloc>().state.note.todos.value
                .fold(
                  (l) => null, 
                  (todoList) => todoList[widget.index].name.value.fold(
                    (valueFailure) => valueFailure.maybeMap(
                      emptyValueFailure: (value) => 'Поле не может быть пустым',
                      exceedingLength: (value) => 'Превышена максимальная длина',
                      multylineValueFailure: (value) => 'Поле должно быть однострочным',
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
                );
            },
          ),
        ),
      ),
    );
  }
}
