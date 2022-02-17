library flutter_extensions;

class DynamicUtilities {
  static bool isEnum(dynamic value) {
    final split = value.toString().split('.');
    return split.length > 1 && split[0] == value.runtimeType.toString();
  }
}
