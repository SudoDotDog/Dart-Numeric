String parseOptionalString(dynamic target) {
  if (target is String) {
    if (target.length == 0) {
      return null;
    }
    return target;
  }
  return target;
}

String padInt(int target, int digits) {
  final String stringed = target.toString();
  if (stringed.length >= digits) {
    return stringed;
  }

  final int difference = digits - stringed.length;
  return '0' * difference + stringed;
}
