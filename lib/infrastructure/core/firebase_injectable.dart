// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

//
// jast wraping therd paty classes for injection
@module
abstract class FirebaseInjectable {
  
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
  
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  // @lazySingleton
  // FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;
}