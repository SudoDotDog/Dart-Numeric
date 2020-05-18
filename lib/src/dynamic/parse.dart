double tryParseNullDouble(dynamic target) {
  if (target == null) {
    return null;
  }
  if (target is double) {
    return target;
  }
  if (target is int) {
    final int integer = target;
    return integer.toDouble();
  }
  return double.tryParse(target.toString());
}

int tryParseNullInt(dynamic target) {
  if (target == null) {
    return null;
  }
  if (target is int) {
    return target;
  }
  if (target is double) {
    final double doubleItem = target;
    return doubleItem.toInt();
  }
  return int.tryParse(target.toString());
}

bool tryParseBoolean(dynamic target) {
  if (target == null) {
    return null;
  }
  if (target is bool) {
    return target;
  }
  return target.toBool();
}

List<String> tryParseStringList(List<dynamic> target) {
  final List<String> result = [];

  for (final dynamic each in target) {
    if (each is String) {
      result.add(each);
    }
    result.add(each.toString());
  }

  return result;
}

DateTime tryParseDateTime(dynamic target) {
  if (target == null) {
    return null;
  }
  if (target is DateTime) {
    return target;
  }
  if (target is String) {
    return DateTime.parse(target);
  }
  if (target is num) {
    return DateTime.parse(target.toString());
  }

  return null;
}
