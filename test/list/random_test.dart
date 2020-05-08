import 'package:numeric/numeric.dart';
import 'package:test/test.dart';

void main() {
  group('List Random', () {
    test('get random item of list', () {
      final int result = randomElementOfList([1]);
      expect(result, equals(1));
    });
  });
}
