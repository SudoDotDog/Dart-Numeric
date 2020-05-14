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
