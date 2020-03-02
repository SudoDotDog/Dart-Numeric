List<int> evenlySeparateInteger(int target, int length) {
  final int unit = (target / length).floor();
  final int consumed = unit * length;
  final int difference = target - consumed;

  final List<int> result = [];
  for (int i = 0; i < length; i++) {
    final bool shouldAdd = i < difference;
    result.add(shouldAdd ? unit + 1 : unit);
  }

  return result;
}
