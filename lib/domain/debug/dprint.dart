// import 'dart:io';

// ignore_for_file: avoid_print

DPrint dPrint = DPrint(inRelease: false);

class DPrint {
  final bool inRelease;
  DPrint({required this.inRelease});
  void log(Object? obj) {
    if (!inRelease) {
      print(obj);
      // stdout.write(obj);
    }
  }
}
