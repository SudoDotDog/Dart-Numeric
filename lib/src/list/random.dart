import 'package:numeric/src/number/random.dart';

T randomElementOfList<T>(List<T> list) {
  if (list.length == 0) {
    return null;
  }

  final int index = randomNaturalBelow(list.length);
  return list[index];
}
