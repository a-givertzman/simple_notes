// import 'dart:io';

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
