import 'package:auth_app/domain/notes/note.dart';
import 'package:auth_app/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class ErrorNoteCard extends StatelessWidget {
  final Note note;
  
  const ErrorNoteCard({
    Key? key,
    required this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(commonPadding),
        child: Column(
          children: <Widget>[
            Text(
              'Данные заметки повреждены,\nобратитесь к оганизаторам',
              style: Theme.of(context).primaryTextTheme.subtitle1,
            ),
            const SizedBox(height: 4,),
            Text(
              'Технические детали:',
              style: Theme.of(context).primaryTextTheme.subtitle1,
            ),
            Text(
              note.failureOption.fold(
                () => '', 
                (failure) => failure.toString(),
              ),
              style: Theme.of(context).primaryTextTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
