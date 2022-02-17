import 'package:flutter_common_library/flutter_common_library.dart';
import 'package:flutter_test/flutter_test.dart';

enum ElementType { water, fire, earth, thunder, wind }

void main() {
  test('Test String to enum success', () {
    String valueWind = "wind";
    var enumValue = valueWind.toEnum<ElementType>(ElementType.values);
    expect(enumValue, ElementType.wind);
  });

  test('Test String to enum fail', () {
    String valueWind = "wind1";
    var enumValue = valueWind.toEnum<ElementType>(ElementType.values);
    expect(enumValue, null);
  });

  test('dynamic is enum', () {
    dynamic elementFire = ElementType.fire;
    expect(DynamicUtilities.isEnum(elementFire), true);
  });

  test('dynamic is not enum', () {
    dynamic elementFire = "string";
    expect(DynamicUtilities.isEnum(elementFire), false);
  });

  test('Date to string 2022-02-17', () {
    String dateStr = "2022-02-17";
    var dt = DateTime.parse(dateStr);
    expect(dt.toStringWithFormat("yyyy-MM-dd"), dateStr);
  });

  test('string 2022-02-17 to DateTime', () {
    String dateStr = "2022-02-17";
    var dt = DateTime.parse("2022-02-17");
    expect(dateStr.toDateTime("yyyy-MM-dd"), dt);
  });
}
