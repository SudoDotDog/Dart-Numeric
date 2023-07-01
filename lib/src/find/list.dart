import 'package:numeric/src/entity/declare.dart';
import 'package:numeric/src/util.dart';

T? findFirstMatchedElement<T>(
  List<T> target,
  MatcherFunction<T> matcher, {
  CloneFunction<T>? cloneFunction,
}) {
  final int length = target.length;

  for (int i = 0; i < length; i++) {
    if (matcher(target[i], i)) {
      return attemptCloneObject(
        target[i],
        cloneFunction: cloneFunction,
      );
    }
  }
  return null;
}

T? findLastMatchedElement<T>(
  List<T> target,
  MatcherFunction<T> matcher, {
  CloneFunction<T>? cloneFunction,
}) {
  final int length = target.length;

  for (int i = length - 1; i >= 0; i--) {
    if (matcher(target[i], i)) {
      return attemptCloneObject(
        target[i],
        cloneFunction: cloneFunction,
      );
    }
  }
  return null;
}
