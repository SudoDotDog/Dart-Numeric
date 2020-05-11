typedef CloneFunction<T> = T Function(T object);
typedef MatcherFunction<T> = bool Function(T object, int index);
typedef PureMatcherFunction<T> = bool Function(T object);
