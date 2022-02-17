import 'package:flutter_common_library/utilities/print_utilities.dart';
import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  String? toStringWithFormat(String format) {
    try {
      var dateFormat = DateFormat(format);

      return dateFormat.format(this);
    } catch (e) {
      PrintUtilities.write('DateExtension.toStringWithFormat Error: $e');
    } finally {}
    return null;
  }
}
