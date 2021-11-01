import 'package:auth_app/domain/core/entities/unique_id.dart';
import 'package:auth_app/domain/core/error/failure.dart';
import 'package:auth_app/domain/debug/dprint.dart';
import 'package:auth_app/domain/notes/todo_item.dart';
import 'package:auth_app/domain/notes/vaue_object.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
//
part 'note.freezed.dart';
//
//
@freezed
abstract class Note implements _$Note {

  const factory Note({
    required UniqueId id,
    required NoteBody body,
    required NoteColor color,
    required List3<TodoItem> todos,
    required DateTime updated,
  }) = _Note;

  const Note._();
  
  factory Note.empty() => Note(
    id: UniqueId(), 
    body: NoteBody(''), 
    color: NoteColor(NoteColor.predefinedColors[0]),
    todos: List3(emptyList()),
    updated: DateTime.now(),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    dPrint.log('[Note.failureOption]');
    return body.failureOrUnit
      .andThen(todos.failureOrUnit)   // validating todos list
      .andThen(                 // validating each todo Item in the todo list
        todos.getOrCrush()            // getting KTList of todo items
          .map((todoItem) => todoItem.failureOption)  // extract a failureOption of each todo item
          .filter((todoItem) => todoItem.isSome())    // then takes only the faild todo items, wich are is some
          .getOrElse(0, (_) => none())                // check if there is failed todo items in the list
          .fold(
            () => right(unit),                // return right side of todos.failureOrUnit - unit
            (failItem) => left(failItem),     // if even one item in the list is invalid return left side of todos.failureOrUnit - ValueFailure
          ),
      )
      .fold(        // folding the result of all falidates
        (failure) => some(failure),
        (_) => none(),                // right side of option in OK value => returns none
      );
  }
}
