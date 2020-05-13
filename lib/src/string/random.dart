import 'dart:math';

import 'package:numeric/src/declare.dart';

String randomString({
  int length = DEFAULT_STRING_LENGTH,
}) {
  final Random random = Random();

  final double value = random.nextDouble();
  final int intValue = int.parse(value.toString().substring(2));

  final String hexValue = intValue.toRadixString(36);

  final int actualLength =
      length <= DEFAULT_STRING_LENGTH ? length : DEFAULT_STRING_LENGTH;
  final String assertValue = hexValue.substring(0, actualLength);

  if (assertValue.length < actualLength) {
    return (assertValue * 3).substring(0, actualLength);
  }

  return assertValue;
}
