import 'package:auth_app/domain/debug/dprint.dart';
import 'package:auth_app/domain/notes/note_failure.dart';
import 'package:flutter/material.dart';

class CriticalErrorWidget extends StatelessWidget {
  final NoteFailure failure;

  const CriticalErrorWidget({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, // это оцентрирует по верикали
        children: <Widget>[
          Text(
            'Ошибка при чтении данных',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 4,),
          Text(
            failure.map(
              unexpected: 
                (nFailure) => '[unexpected] ${nFailure.message}',
              noPermission: 
                (nFailure) => '[noPermission] ${nFailure.message}',
              couldNotBeFound: 
                (nFailure) => '[couldNotBeFound] ${nFailure.message}',
            ),
          ),
          TextButton(
            onPressed: () {
              dPrint.log('Please Implemente the Sending email on critical error');
            }, 
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.mail),
                SizedBox(width: 4,),
                Text('Отправить отчет об ошибке'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

            // return FlushbarHelper.createError(
            //   duration: flushBarDuration,
            //   title: state.noteF
            //   message: state.noteFailure.map(
            //     unexpected: 
            //       (nFailure) => '${nFailure.message}',
            //     noPermission: 
            //       (nFailure) => '${nFailure.message}',
            //     couldNotBeFound: 
            //       (nFailure) => '${nFailure.message}',
            //   ),
            // );
