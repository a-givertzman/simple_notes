import 'package:auth_app/domain/auth/i_auth_repository.dart';
import 'package:auth_app/domain/core/error/errors.dart';
import 'package:auth_app/domain/debug/dprint.dart';
import 'package:auth_app/injection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreExt on FirebaseFirestore {
  Future<DocumentReference<Map<String, dynamic>>> userDocument() async {
    dPrint.log('[FirestoreExt.userDocument]');
    final userOption = getIt<IAuthRepository>().getCurrentUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
      .collection('users')
      .doc(user.id.getOrCrush());
  }
}

extension DocumentReferenceExt on DocumentReference {
  CollectionReference<Map<String, dynamic>> get noteCollection => collection('notes');
}
