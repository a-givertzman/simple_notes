import 'package:auth_app/domain/core/entities/unique_id.dart';
import 'package:auth_app/domain/notes/note.dart';
import 'package:auth_app/domain/notes/todo_item.dart';
import 'package:auth_app/domain/notes/vaue_object.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'note_dtos.freezed.dart';

part 'note_dtos.g.dart';  // to and from JSON convertion
//
// 
// Data Transfer Objects
// Also converting the Data Transfer Objects to and from JSON
//
// flutter pub run build_runner watch --delete-conflicting-outputs
//
// To do Item Data Transfer Objects
@freezed
abstract class NoteDto implements _$NoteDto {

  const factory NoteDto({
    String? id,
    required String body,
    required int color,
    required List<TodoItemDto> todos,
    required DateTime lastUpdateTimeStamp,
  }) = _NoteDto;

  const NoteDto._();

  factory NoteDto.fromDomain(Note note) {
    return NoteDto(
      id: note.id.getOrCrush(),
      body: note.body.getOrCrush(), 
      color: note.color.getOrCrush().value, 
      todos: note.todos
        .getOrCrush()
        .map(
          (todoItem) => TodoItemDto.fromDomain(todoItem),
        )
        .asList(),
      lastUpdateTimeStamp: note.lastUpdateTimeStamp,
    );
  }

  Note toDomain() {
    return Note(
      id: UniqueId.fromString(id??'000'), 
      body: NoteBody(body), 
      color: NoteColor(Color(color)), 
      todos: List3(
          todos.map(
            (todoItem) => todoItem.toDomain(),
          ).toImmutableList(),
      ),
      lastUpdateTimeStamp: lastUpdateTimeStamp,
    );
  }

  factory NoteDto.fromJson(Map<String, dynamic> json) =>
    _$NoteDtoFromJson(json);

  factory NoteDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return NoteDto.fromJson(
      doc.data()??{'error': 'no data'},
    ).copyWith(id: doc.id);
  }
}
//
// To do Item Data Transfer Objects
@freezed
abstract class TodoItemDto implements _$TodoItemDto {
  // "implements" insted of "with" used for implementing a regular method inside this class
  // also the default constrtuctor (const TodoItemDto._();) should be implemented in this way

  const factory TodoItemDto({
    required String id,
    required String name,
    required bool done,
  }) = _TodoItemDto;

  const TodoItemDto._();

  factory TodoItemDto.fromDomain(TodoItem todoItem) {
    return TodoItemDto(
      id: todoItem.id.getOrCrush(), 
      name: todoItem.name.getOrCrush(), 
      done: todoItem.done,
    );
  }

  TodoItem toDomain() {
    return TodoItem(
      id: UniqueId.fromString(id), 
      name: TodoName(name), 
      done: done,
    );
  }

  factory TodoItemDto.fromJson(Map<String, dynamic> json) =>
    _$TodoItemDtoFromJson(json);
}
//
// Преобразование метки времени из Firstore в Domain и обратно
class TimeStampConverter implements JsonConverter<DateTime, Object> {
  const TimeStampConverter();

  @override
  DateTime fromJson(Object json) {
    return DateTime.parse(json.toString());
  }

  @override
  Object toJson(DateTime dateTime) {
    return dateTime.toIso8601String();
  }
}