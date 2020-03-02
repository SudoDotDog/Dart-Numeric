import 'package:numeric/numeric.dart';
import 'package:test/test.dart';

void main() {
  group('Number Deconstruction', () {
    test('get alias can return word', () {
      final int target = 100;

      final List<int> result = evenlySeparateInteger(target, 5);
      expect(result, equals([20, 20, 20, 20, 20]));
    });

    test('get alias can return word - difference', () {
      final int target = 104;

      final List<int> result = evenlySeparateInteger(target, 5);
      expect(result, equals([21, 21, 21, 21, 20]));
    });
  });
}
