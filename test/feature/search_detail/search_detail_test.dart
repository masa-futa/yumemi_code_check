import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yumemi_code_check/feature/search_detail/search_detail_screen.dart';
import 'package:yumemi_code_check/query_service/search_query_state.dart';

void main() {
  group('検索結果詳細画面', () {
    testWidgets('検索画面から受け取った値を正常表示していること', (tester) async {
      const fullName = 'fullName';
      const avatarUrl = 'avatarUrl';
      const language = 'language';
      const watchersCount = '100';
      const forksCount = '200';
      const openIssuesCount = '300';
      const stargazersCount = '400';

      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: SearchDetailScreen(
              item: SearchViewState(
                fullName: fullName,
                avatarUrl: avatarUrl,
                language: language,
                watchersCount: watchersCount,
                forksCount: forksCount,
                openIssuesCount: openIssuesCount,
                stargazersCount: stargazersCount,
              ),
            ),
          ),
        ),
      );

      final titleFinder = find.text(fullName);
      final languageFilter = find.text(language);
      final watchersCountFilter = find.text(watchersCount);
      final forksCountFilter = find.text(forksCount);
      final openIssuesCountFilter = find.text(openIssuesCount);
      final stargazersCountFilter = find.text(stargazersCount);

      expect(titleFinder, findsOneWidget);
      expect(languageFilter, findsOneWidget);
      expect(watchersCountFilter, findsOneWidget);
      expect(forksCountFilter, findsOneWidget);
      expect(openIssuesCountFilter, findsOneWidget);
      expect(stargazersCountFilter, findsOneWidget);

      final textWidget = tester.widget<Text>(titleFinder);
      final languageTextWidget = tester.widget<Text>(languageFilter);
      final watchersCountTextWidget = tester.widget<Text>(watchersCountFilter);
      final forksCountTextWidget = tester.widget<Text>(forksCountFilter);
      final openIssuesCountTextWidget = tester.widget<Text>(
        openIssuesCountFilter,
      );
      final stargazersCountTextWidget = tester.widget<Text>(
        stargazersCountFilter,
      );

      expect(textWidget.style?.fontSize, 18.0);
      expect(textWidget.style?.fontWeight, FontWeight.bold);

      expect(languageTextWidget.style?.fontSize, 16.0);
      expect(languageTextWidget.style?.fontWeight, FontWeight.w500);

      expect(watchersCountTextWidget.style?.fontSize, 12.0);
      expect(forksCountTextWidget.style?.fontSize, 12.0);
      expect(openIssuesCountTextWidget.style?.fontSize, 12.0);
      expect(stargazersCountTextWidget.style?.fontSize, 12.0);
    });
  });
}
