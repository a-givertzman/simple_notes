import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
//
part 'failure.freezed.dart';
//
//
// Ganeral Value Failures
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  //
  // Email failure
  const factory ValueFailure.emailFailure({
    required T message,
  }) = _EmailFailure<T>;
  //
  // Password failure
  const factory ValueFailure.passwordFailure({
    required T message,
  }) = _PasswordFailure<T>;
  //
  // User Name failure
  const factory ValueFailure.userNameFailure({
    required T message,
  }) = _UserNameFailure<T>;
  //
  // Exceeding Notes length
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int maxLength,
  }) = _ExceedingLength<T>;
  //
  // Empty value failure
  const factory ValueFailure.emptyValueFailure({
    required T failedValue,
  }) = _EmptyValueFailure<T>;
  //
  // Multiline failure
  const factory ValueFailure.multylineValueFailure({
    required T failedValue,
  }) = _MultylineValueFailure<T>;
  //
  // ListTooLong failure
  const factory ValueFailure.listTooLongFailure({
    required T failedValue,
    required int maxLength,
  }) = _ListTooLongFailure<T>;
}