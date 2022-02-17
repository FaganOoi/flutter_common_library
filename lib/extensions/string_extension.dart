library flutter_extensions;

import 'package:flutter_common_library/utilities/print_utilities.dart';
import 'package:intl/intl.dart';

extension StringExtension on String {
  // Uri
  Uri toUri() {
    return Uri(path: this);
  }

  // Enum
  T? toEnum<T>(Iterable<T> values) {
    try {
      return values.firstWhere(
        (type) => type.toString().split(".").last == this,
      );
    } catch (e) {
      PrintUtilities.write('StringExtension.toEnum Error: $e');
    } finally {}
    return null;
  }

  // DateTime
  DateTime? toDateTime(String format) {
    try {
      var dateFormat = DateFormat(format);

      return dateFormat.parse(this);
    } catch (e) {
      PrintUtilities.write('StringExtension.toDateTime Error: $e');
    }

    return null;
  }
}
