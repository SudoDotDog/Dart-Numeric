import 'package:numeric/src/entity/declare.dart';

T attemptCloneObject<T>(
  T object, {
  CloneFunction<T> cloneFunction,
}) {
  if (cloneFunction != null) {
    return cloneFunction(object);
  }
  return object;
}
