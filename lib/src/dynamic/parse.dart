double tryParseNullDouble(dynamic target) {
  if (target == null) {
    return null;
  }
  if (target is double) {
    return target;
  }
  return double.tryParse(target);
}

int tryParseNullInt(dynamic target) {
  if (target == null) {
    return null;
  }
  if (target is int) {
    return target;
  }
  return int.tryParse(target);
}
