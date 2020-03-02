import 'dart:math';

int randomNaturalBelow(int max) {
  final Random random = Random();

  return random.nextInt(max);
}
