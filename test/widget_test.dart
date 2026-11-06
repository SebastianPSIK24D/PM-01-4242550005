import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_1/main.dart';

void main() {
  testWidgets('Menampilkan teks Hello, World!', (WidgetTester tester) async {
    await tester.pumpWidget(const HelloApp());
    expect(find.text('Hello, World!'), findsOneWidget);
  });
}