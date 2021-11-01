
import 'package:auth_app/domain/debug/dprint.dart';
import 'package:auth_app/domain/notes/i_note_repository.dart';
import 'package:auth_app/domain/notes/note.dart';
import 'package:auth_app/domain/notes/note_failure.dart';
import 'package:auth_app/domain/notes/todo_item.dart';
import 'package:auth_app/infrastructure/core/firestore_helper.dart';
import 'package:auth_app/infrastructure/notes/note_dtos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IFirebaseNoteRepository)
class FirebaseNoteRepository implements IFirebaseNoteRepository {
  final FirebaseFirestore _firestore;

  // эти абстракции можно приментить если работаем с другими 
  // источниками данных и например  используем локальный кэш
  // final NoteRemoteService _noteRemoteService;
  // final NoteLocalService _noteLocalService;

  FirebaseNoteRepository(this._firestore);
  
  @override
  Future<Either<NoteFailure, Unit>> create(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDoc.noteCollection.doc(noteDto.id).set(noteDto.toJson());
      return right(unit); // просто возвращаем пустой right
    } catch (error) {
      dPrint.log('FirebaseNoteRepository.create error');
      dPrint.log(error);
      return left(_noteFailure(error.toString()));
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDoc.noteCollection.doc(noteDto.id).update(noteDto.toJson());
      return right(unit); // просто возвращаем пустой right
    } catch (error) {
      dPrint.log('FirebaseNoteRepository.update error');
      dPrint.log(error);
      return left(_noteFailure(error));
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDoc.noteCollection.doc(noteDto.id).delete();
      return right(unit); // просто возвращаем пустой right
    } catch (error) {
      dPrint.log('FirebaseNoteRepository.delete error');
      dPrint.log(error);
      return left(_noteFailure(error));
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> makeNoteCompleted(TodoItem todoItem) {
    // TODO: implement makeNoteCompleted
    throw UnimplementedError();
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAll() async* {
    // yield left(NoteFailure.noPermission(message: 'Test no permission'));
    // yield left(NoteFailure.unexpected(message: 'Test unexpected'));
    // yield left(NoteFailure.couldNotBeFound(message: 'Test couldNotBeFound'));
    dPrint.log('[FirebaseNoteRepository.watchAll]');
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
      .orderBy('updated', descending: true)
      .snapshots()
      .map(
        (snapshot) {
          return right<NoteFailure, KtList<Note>>(
            snapshot.docs
              .map(
                (doc) => NoteDto.fromFirestore(doc).toDomain(),
              ).toImmutableList(),
          );
        },
      )
      .onErrorReturnWith((error, stackTrace) {
        return left(_noteFailure(error));
      },);
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
      .orderBy('updated', descending: true)
      .snapshots()
      .map(
        (snapshot) => snapshot.docs.map(
            (doc) => NoteDto.fromFirestore(doc).toDomain(),
        ),
      )
      .map(
        (notes) => right<NoteFailure, KtList<Note>>(
          notes.where(
            (note) => note.todos.getOrCrush().any(
              (todoItem) => !todoItem.done,
            ),
          ).toImmutableList(),
        ),
      )
      .onErrorReturnWith((error, stackTrace) {
        return left(_noteFailure(error));
      },);  
  }
}

NoteFailure<dynamic> _noteFailure(Object error) {
        dPrint.log('[FirebaseNoteRepository._noteFailure] error:');
        dPrint.log(error);
        if (error is PlatformException) {
          final _status = error.code;
          dPrint.log('error.code: $_status');
          final _message = '${error.message} \n${error.details.toString()}';
          if (_status.contains('PERMISSION_DENIED')) {
            return NoteFailure.noPermission(message: _message);
          } else if (_status.contains('NOT_FOUND')) {
            return NoteFailure.couldNotBeFound(message: _message);
          } else {
            return NoteFailure.unexpected(message: _message);
          } 
        } else if (error is FirebaseException) {
          final _status = error.code;
          dPrint.log('error.code: $_status');
          final _message = '${error.message}';
          if (_status.contains(RegExp('permission.*denied', caseSensitive: false))) {
            return NoteFailure.noPermission(message: _message);
          } else if (_status.contains('NOT_FOUND')) {
            return NoteFailure.couldNotBeFound(message: _message);
          } else {
            return NoteFailure.unexpected(message: _message);
          }
        } else if (error is Exception) {
          final String _message = error.toString();
          return NoteFailure.unexpected(message: _message);
        } else {
          return const NoteFailure.unexpected(message: 'Неизвестная ошибка');
        }
}
