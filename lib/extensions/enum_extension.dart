library flutter_extensions;

import 'package:flutter/foundation.dart';

extension EnumExtension on Enum {
  String toValue() {
    return describeEnum(this);
  }
}
