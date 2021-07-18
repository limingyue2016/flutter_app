import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapp/main.dart';

void main() {
  //第一个用例，判断Counter对象调用increase方法后是否等于1
  test('Increase a counter value should be 1', () {
    final counter = Counter();
    counter.increase();
    expect(counter.count, 1);
  });
  //第二个用例，判断1+1是否等于2
  test('1+1 should be 2', () {
    expect(1 + 1, 2);
  });
}
