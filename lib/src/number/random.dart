import 'dart:math';

int randomNaturalBelow(int max) {
  final Random random = Random();

  return random.nextInt(max);
}

int randomIntegerBetween(int min, int max) {
  if (min > max) {
    return min;
  }

  final Random random = Random();

  final int difference = max - min;
  final int floatBottom = random.nextInt(difference);

  return floatBottom + min;
}
