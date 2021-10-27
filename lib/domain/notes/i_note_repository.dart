import 'package:auth_app/domain/notes/note.dart';
import 'package:auth_app/domain/notes/note_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class INoteRepository {
  // watch notes (read notes, observe)
  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  //
  // watch uncompleted notes
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  //
  // Create note
  Future<Either<NoteFailure, Unit>> create(Note note);
  //
  // Update note
  Future<Either<NoteFailure, Unit>> update(Note note);
  //
  // Delete note
  Future<Either<NoteFailure, Unit>> delete(Note note);
}
