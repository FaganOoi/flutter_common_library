import 'package:flutter/foundation.dart';

class PrintUtilities {
  static void write(String message) {
    try {
      if (kDebugMode) {
        // log(message);
        debugPrint(message);
      }
    } finally {}
  }
}
