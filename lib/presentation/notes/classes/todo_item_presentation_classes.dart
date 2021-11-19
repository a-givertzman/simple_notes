import 'package:auth_app/domain/core/entities/unique_id.dart';
import 'package:auth_app/domain/notes/todo_item.dart';
import 'package:auth_app/domain/notes/vaue_object.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'todo_item_presentation_classes.freezed.dart';

class FormTodos extends ValueNotifier<KtList<TodoItemPrimitive>> {
  FormTodos() : super(emptyList<TodoItemPrimitive>());

}

@freezed
abstract class TodoItemPrimitive implements _$TodoItemPrimitive {
  const factory TodoItemPrimitive({
    required UniqueId id,
    required String name,
    required bool done,
  }) = _TodoItemPrimitive;

  factory TodoItemPrimitive.empty() => TodoItemPrimitive(
    id: UniqueId(), 
    name: 'Todo', 
    done: false,
  );

  factory TodoItemPrimitive.fromDomain(TodoItem todoItem) {
    return TodoItemPrimitive(
      id: todoItem.id, 
      name: todoItem.name.getOrCrush(), 
      done: todoItem.done,
    );
  }

  TodoItem toDomain() {
    return TodoItem(
      id: id, 
      name: TodoName(name), 
      done: done,
    );
  }

  const TodoItemPrimitive._();
}
