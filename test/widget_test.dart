import 'package:flutter_test/flutter_test.dart';

import 'package:my_farm/app.dart';

void main() {
  testWidgets('Should show construction word', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    expect(find.text('Under construction'), findsOneWidget);
  });
}
