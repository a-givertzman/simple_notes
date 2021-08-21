import 'package:auth_app/domain/core/entities/unique_id.dart';
import 'package:auth_app/domain/core/error/failure.dart';
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
  const Note._();

  const factory Note({
    required UniqueId id,
    required NoteBody body,
    required NoteColor color,
    required List3<TodoItem> todos,
  }) = _Note;

  factory Note.empty() => Note(
    id: UniqueId(), 
    body: NoteBody('new note'), 
    color: NoteColor(NoteColor.predefinedColors[0]),
    todos: List3(emptyList()),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit
      // validating todos list
      .andThen(todos.failureOrUnit)
      // validating each todo Item in the todo list
      .andThen(
        todos.getOrCrush()            // getting KTList of todo items
          .map((todoItem) => todoItem.failureOption)  // extract a failureOption of each todo item
          .filter((todoItem) => todoItem.isSome())    // then takes only the faild todo items, wich are is some
          .getOrElse(0, (_) => none())                // check if there is failed todo items in the list
          .fold(
            () => right(unit),                // return right side of todos.failureOrUnit - unit
            (failItem) => left(failItem),     // if even one item in the list is invalid return left side of todos.failureOrUnit - ValueFailure
          ),
      )
      // folding the result of all falidates
      .fold(
        (failure) => some(failure),
        (_) => none(),                // right side of option in OK value => returns none
      );
  }
}