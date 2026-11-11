import 'package:flutter_test/flutter_test.dart';
import 'package:homecare/main.dart';

void main() {
  testWidgets('demo profile opens HomeCare', (tester) async {
    await tester.pumpWidget(const HomeCareApp());
    await tester.tap(find.text('Open HomeCare'));
    await tester.pumpAndSettle();
    expect(find.text('House'), findsOneWidget);
    expect(find.textContaining('points'), findsWidgets);
  });
}
