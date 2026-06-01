import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:group_flutter_pages_demo/main.dart';

/// 组员F验收测试：覆盖所有组员合并后的内容
void main() {
  testWidgets('验收：App启动后 AppBar 标题正确', (tester) async {
    await tester.pumpWidget(const GroupFlutterPagesApp());
    expect(find.text('小组项目展示'), findsOneWidget);
  });

  // ─── 组员A验收：标题和口号 ───
  testWidgets('验收-组员A：首页标题为合并后版本', (tester) async {
    await tester.pumpWidget(const GroupFlutterPagesApp());
    expect(find.text('GitHub 协作与 Flutter Web 部署展示页'), findsOneWidget);
    expect(
        find.text(
            '7人小组分工协作完成 GitHub 团队开发与 Flutter Web 部署'),
        findsOneWidget);
  });

  // ─── 组员B验收：成员列表 ───
  testWidgets('验收-组员B：小组成员与分工标题存在', (tester) async {
    await tester.pumpWidget(const GroupFlutterPagesApp());
    expect(find.text('小组成员与分工'), findsOneWidget);
  });

  testWidgets('验收-组员B：7位成员全部显示', (tester) async {
    await tester.pumpWidget(const GroupFlutterPagesApp());
    expect(find.text('组长：蒋亿乐'), findsOneWidget);
    expect(find.text('组员 A：王小梅'), findsOneWidget);
    expect(find.text('组员 B：唐一甜'), findsOneWidget);
    expect(find.text('组员 C：刘昱泽'), findsOneWidget);
    expect(find.text('组员 D：张蕴洁'), findsOneWidget);
    expect(find.text('组员 E：杨晨曦'), findsOneWidget);
    expect(find.text('组员 F：于昕冉'), findsOneWidget);
  });

  testWidgets('验收-组员B：每位成员的 CircleAvatar 显示角色末字',
      (tester) async {
    await tester.pumpWidget(const GroupFlutterPagesApp());
    expect(find.text('长'), findsOneWidget);
    expect(find.text('A'), findsOneWidget);
    expect(find.text('B'), findsOneWidget);
    expect(find.text('C'), findsOneWidget);
    expect(find.text('D'), findsOneWidget);
    expect(find.text('E'), findsOneWidget);
    expect(find.text('F'), findsOneWidget);
  });

  // ─── 组员C验收：功能列表 ───
  testWidgets('验收-组员C：项目功能标题与内容', (tester) async {
    await tester.pumpWidget(const GroupFlutterPagesApp());
    await tester.pumpAndSettle();

    // 滚动到功能区域（连续滚动确保到位）
    await tester.drag(find.byType(ListView), const Offset(0, -600));
    await tester.pumpAndSettle();

    expect(find.text('项目功能'), findsOneWidget);
    // 注意：渲染时带 "• " 前缀
    expect(find.text('• 展示小组项目主题与小组口号'), findsOneWidget);
    expect(find.text('• 展示七位成员的姓名、角色与任务分工'),
        findsOneWidget);
    expect(find.text('• 每位组员通过独立分支和 Pull Request 完成协作修改'),
        findsOneWidget);
    expect(find.text('• 使用 Flutter Web 构建并通过 GitHub Pages 对外发布'),
        findsOneWidget);
  });

  // ─── 组员D验收：发布说明 ───
  testWidgets('验收-组员D：发布说明标题与内容', (tester) async {
    await tester.pumpWidget(const GroupFlutterPagesApp());
    await tester.pumpAndSettle();

    // 滚动到底部发布说明区域
    await tester.drag(find.byType(ListView), const Offset(0, -600));
    await tester.pumpAndSettle();
    await tester.drag(find.byType(ListView), const Offset(0, -600));
    await tester.pumpAndSettle();

    expect(find.text('发布说明'), findsOneWidget);
    // 注意：渲染时带 "• " 前缀
    expect(
        find.text(
            '• 源码统一维护在 main 分支，所有组员修改都通过 PR 合并。'),
        findsOneWidget);
    expect(find.text('• 组长使用 flutter build web 生成静态网页文件。'),
        findsOneWidget);
    expect(
        find.text(
            '• 构建产物发布到 gh-pages 分支，并由 GitHub Pages 对外访问。'),
        findsOneWidget);
    expect(
        find.text(
            '• 访问地址格式：https://RouX-O.github.io/group-flutter-pages-demo/'),
        findsOneWidget);
  });
}
