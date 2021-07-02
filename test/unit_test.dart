import 'package:flutter_test/flutter_test.dart';

void main() {
  group("group test", () {
    setUp(() {
      print('set up');
    });

    tearDown(() {
      print('tear down');
    });

    test('test 1', () {
      int i = 0;
      expect(i, 0);
    });

    test('test 2', () {
      int i = 1;
      expect(i, 1);
    });
  });
}
