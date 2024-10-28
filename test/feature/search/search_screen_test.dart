import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yumemi_code_check/feature/search/search_screen.dart';
import 'package:yumemi_code_check/utils/i18n/output/strings.g.dart';

void main() {
  Widget createWidgetForTesting([List<Override>? overrides]) {
    return ProviderScope(
      overrides: overrides ?? [],
      child: const MaterialApp(
        home: SearchScreen(),
      ),
    );
  }

  group('検索画面', () {
    testWidgets('初回表示時', (tester) async {
      await tester.pumpWidget(createWidgetForTesting());
      expect(find.text(i18n.search.title), findsOneWidget);
      expect(find.text(i18n.search.initial), findsOneWidget);
      expect(find.text(i18n.error.common), findsNothing);
      expect(find.byType(ListView), findsNothing);
    });
  });
}
