import 'package:auth_app/domain/core/entities/unique_id.dart';
import 'package:auth_app/domain/core/error/failure.dart';
import 'package:auth_app/domain/notes/vaue_object.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item.freezed.dart';
//
//
@freezed
abstract class TodoItem implements _$TodoItem {

  const factory TodoItem({
    required UniqueId id,
    required TodoName name,
    required bool done,
  }) = _TodoItem;

  const TodoItem._();
  
  factory TodoItem.empty() => TodoItem(
    id: UniqueId(), 
    name: TodoName(''), 
    done: false,
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold(
      (failure) => some(failure),
      (_) => none(),                // right side of option in OK value => returns none
    );
  }
}
