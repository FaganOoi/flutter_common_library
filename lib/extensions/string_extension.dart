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

  // Cases Format
  String formatOriginalSnakeCase() {
    return trim().replaceAll(" ", "_");
  }

  String formatSnakeCase() {
    // snake case var is snake_case_var
    return toLowerCase().trim().replaceAll(" ", "_");
  }

  String formatUpperSnakeCase() {
    return toUpperCase().trim().replaceAll(" ", "_");
  }

  String formatKebabCase() {
    // kebab case var is kebab-case-var
    return toLowerCase().trim().replaceAll(" ", "-");
  }

  String formatCamelCase() {
    // camel case var is camelCaseVar
    String value = "";
    trim().split(" ").asMap().forEach((index, valueStr) {
      if (index > 0) {
        var firstCharacter = valueStr[0];
        value += valueStr.replaceFirst(
          firstCharacter,
          firstCharacter.toUpperCase(),
        );
      } else {
        value += valueStr;
      }
    });

    return value;
  }

  String formatPascalCase() {
    // pascal case var is PascalCaseVar
    String value = "";
    trim().split(" ").asMap().forEach((index, valueStr) {
      var firstCharacter = valueStr[0];
      value += valueStr.replaceFirst(
        firstCharacter,
        firstCharacter.toUpperCase(),
      );
    });

    return value;
  }
}
