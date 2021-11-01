import 'package:auth_app/application/notes/notes_events_bloc/notes_evens_bloc.dart';
import 'package:auth_app/domain/notes/note.dart';
import 'package:auth_app/domain/notes/todo_item.dart';
import 'package:auth_app/presentation/core/constants.dart';
import 'package:auth_app/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

class NoteCard extends StatelessWidget {
  final Note note;

  const NoteCard({
    Key? key,
    required this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: note.color.getOrCrush(),
      child: Dismissible(
        key: Key(note.id.getOrCrush()),
        background: Container(color: Colors.red[400],),
        direction: DismissDirection.endToStart,
        confirmDismiss: (_) async {
          final notesEvensBloc = BlocProvider.of<NotesEvensBloc>(context);
          return _showDeleteDialog(context, notesEvensBloc);
        },
        onDismissed: (_) {
          final notesEvensBloc = BlocProvider.of<NotesEvensBloc>(context);
          notesEvensBloc.add(NotesEvensEvent.deleted(note));
        },
        child: InkWell(
          onTap: () {
            AutoRouter.of(context).push(NoteFormPageRoute(note: note));
          },
          child: Padding(
            padding: const EdgeInsets.all(commonPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  note.body.getOrCrush(),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                if (note.todos.length > 0) ...[
                  const SizedBox(height: 4,),
                  Wrap(
                    spacing: todosSpasing,
                    children: <Widget>[
                      ...note.todos.getOrCrush().map(
                        (todo) => TodosNoteWidget(todo: todo),
                      ).iter,
                    ],
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool?> _showDeleteDialog(BuildContext context, NotesEvensBloc notesEvensBloc) {
    return showDialog<bool>(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Удалить заметку?'),
          content: Text(
            note.body.getOrCrush(),
            maxLines: 2,
            overflow: TextOverflow.clip,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, false), 
              child: const Text('Отмена'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true), 
              child: const Text('Удалить'),
            ),
          ],
        );
      },
    );
  }
}

class TodosNoteWidget extends StatelessWidget {
  final TodoItem todo;
  const TodosNoteWidget({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (todo.done) 
          Icon(
            Icons.check_box,
            color: Theme.of(context).colorScheme.primaryVariant,
          )
        else
          Icon(
            Icons.check_box_outline_blank,
            color: Theme.of(context).disabledColor,
          ),
        Text(todo.name.getOrCrush())
      ],
    );
  }
}
