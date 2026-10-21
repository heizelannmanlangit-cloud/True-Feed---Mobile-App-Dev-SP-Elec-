import 'package:flutter_test/flutter_test.dart';
import 'package:truefeed/main.dart';

void main() {
  testWidgets('home feed shows articles and a card opens the article page',
      (tester) async {
    await tester.pumpWidget(const TrueFeedApp());

    // Home feed
    expect(find.text('TRUE FEED'), findsOneWidget);
    expect(find.text('Senate passes new tuition subsidy bill'), findsOneWidget);

    // Tap a card, the Article screen opens
    await tester.tap(find.text('Senate passes new tuition subsidy bill'));
    await tester.pumpAndSettle();
    expect(find.text('Article'), findsOneWidget);
    expect(find.text('92% match'), findsOneWidget);
  });

  testWidgets('bottom navigation switches screens', (tester) async {
    await tester.pumpWidget(const TrueFeedApp());

    await tester.tap(find.text('Search'));
    await tester.pumpAndSettle();
    expect(find.text('Search is not working yet.'), findsOneWidget);

    await tester.tap(find.text('Saved'));
    await tester.pumpAndSettle();
    expect(find.text('Saved articles will show here.'), findsOneWidget);

    await tester.tap(find.text('Report'));
    await tester.pumpAndSettle();
    expect(find.text('Report form coming soon.'), findsOneWidget);
  });
}
