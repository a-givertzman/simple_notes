import 'package:flutter/material.dart';

Future<bool?> showDeleteDialog({
  required BuildContext context, 
  required Widget title, 
  required Widget content,
}) {
  return showDialog<bool>(
    context: context, 
    builder: (BuildContext context) {
      return AlertDialog(
        title: title,
        content: content,
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
