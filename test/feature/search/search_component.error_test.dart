import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yumemi_code_check/data_source/api_exception.dart';
import 'package:yumemi_code_check/feature/search/search_component.error.dart';
import 'package:yumemi_code_check/utils/i18n/output/strings.g.dart';

void main() {
  group('初回表示TextWidget', () {
    testWidgets('ExceptionがNotFound', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: SearchComponentErrorWidget(exception: NotFound()),
          ),
        ),
      );

      final titleFinder =
          find.text(i18n.error.apiException.notFound.description);
      expect(titleFinder, findsOneWidget);

      final textWidget = tester.widget<Text>(titleFinder);
      expect(textWidget.style?.fontSize, 14.0);
      expect(textWidget.style?.fontWeight, FontWeight.w500);
    });
  });
}
