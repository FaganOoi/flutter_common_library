import 'package:flutter_common_library/flutter_common_library.dart';

extension IntegerExtension on int {
  DateTime? toDateTimeFromMilli() {
    try {
      return DateTime.fromMillisecondsSinceEpoch(this);
    } catch (e) {
      PrintUtilities.write('StringExtension.toDateTime Error: $e');
    }

    return null;
  }

  DateTime? toDateTimeFromMicro() {
    try {
      return DateTime.fromMicrosecondsSinceEpoch(this);
    } catch (e) {
      PrintUtilities.write('StringExtension.toDateTime Error: $e');
    }

    return null;
  }
}
