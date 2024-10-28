import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yumemi_code_check/feature/search/search_component.empty.dart';
import 'package:yumemi_code_check/utils/i18n/output/strings.g.dart';

void main() {
  group('初回表示TextWidget', () {
    testWidgets('検索結果がからの場合', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: SearchComponentEmptyWidget(),
          ),
        ),
      );

      final titleFinder = find.text(i18n.search.empty);
      expect(titleFinder, findsOneWidget);

      final textWidget = tester.widget<Text>(titleFinder);
      expect(textWidget.style?.fontSize, 14.0);
      expect(textWidget.style?.fontWeight, FontWeight.w500);
    });
  });
}
