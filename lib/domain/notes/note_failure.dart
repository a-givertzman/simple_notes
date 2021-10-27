
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_failure.freezed.dart';
//
//
// 
// flutter pub run build_runner watch --delete-conflicting-outputs
@freezed
abstract class NoteFailure<T> with _$NoteFailure<T> {
  const factory NoteFailure.unexpected() = _Unexpected<T>;
}
