import 'dart:ui';

import 'package:auth_app/domain/core/entities/value_object.dart';
import 'package:auth_app/domain/core/entities/value_validators.dart';
import 'package:auth_app/domain/core/error/failure.dart';
import 'package:auth_app/domain/notes/value_transformers.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

class NoteBody extends ValueObject<String> {
  @override
  final Either<ValueFailure, String> value;
  static int maxLength = 1000;
  factory NoteBody(String input) {
    return NoteBody._(
      // проверяем строку input на превышение максимальной длины, 
      // если вернется Either<Right> то идем к след. валидатору
      validateMaxStringLength(input, maxLength)
        // и затем ту же строку проверяем что не пусьая
        .flatMap((prevoseResult) => validateStringNotEmpty(prevoseResult)),
    );
  }
  const NoteBody._(this.value);
}
//
//
class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure, String> value;
  static int maxLength = 30;
  factory TodoName(String input) {
    return TodoName._(
      validateMaxStringLength(input, maxLength)
        .flatMap((prevoseResult) => validateStringNotEmpty(prevoseResult))
        .flatMap((prevoseResult) => validateStringSingleLine(prevoseResult, maxLength)),
    );
  }
  const TodoName._(this.value);
}
//
//
class NoteColor extends ValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0), // cream
  ];
  @override
  final Either<ValueFailure<Color>, Color> value;
  static int maxLength = 30;
  factory NoteColor(Color input) {
    return NoteColor._(
      Right(
        makeColorOpaque(input),
      ),
    );
  }
  const NoteColor._(this.value);
}
//
//
class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;
  static int maxLength = 3;
  factory List3(KtList<T> input) {
    return List3._(
      validateMaxListLength(input, maxLength),
    );
  }
  const List3._(this.value);
  int get length {
    return value.getOrElse(() => emptyList()).size;
  }
  bool get isFull {
    return length == maxLength;
  }
}
