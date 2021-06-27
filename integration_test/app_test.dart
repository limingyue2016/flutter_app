import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapp/main.dart';
import 'package:integration_test/integration_test.dart';
//import 'test_suite1_test.dart';

void main(){
  ///集成测试环境的初始化
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  ///具体的
  testSuite1();
}

void testSuite1() {
  testWidgets('counter page测试', (WidgetTester tester) async{

    ///启动MyApp widget，pumpWidget后不会再次刷新widget，除非
    await tester.pumpWidget(MyApp());


    ///find是用来查找目标Widget及其中相关内容的单例辅助对象
    ///expect执行验证widget行为是否符合预期
    ///`findsOneWidget`常量表示有符合预期的widget，`findsNothing`表示没有符合预期的widget
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    ///模拟add icon的点击事件30次
    for (int i = 0; i < 30; i++) {
      await tester.tap(find.byIcon(Icons.add));

      ///重建Widget(即刷新页面)
      await tester.pump(const Duration(milliseconds: 500));
      expect(find.text('${i +1}'), findsOneWidget);
    }

    ///结束状态的验证
    expect(find.text('30'), findsOneWidget);
  });
}