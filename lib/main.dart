import 'package:auth_app/injection.dart';
import 'package:auth_app/presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'domain/debug/dprint.dart';

Future<void> main() async {
  dPrint = DPrint(inRelease: false);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
