import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yumemi_code_check/feature/search/search_screen.dart';
import 'package:yumemi_code_check/thema/custom_theme.dart';
import 'package:yumemi_code_check/utils/i18n/output/strings.g.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();

  runApp(
    ProviderScope(
      child: TranslationProvider(child: const MyApp()),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customTheme = ref.watch(customThemeProvider);
    return MaterialApp(
      theme: customTheme.lightThemeData(context),
      darkTheme: customTheme.darkThemeData(context),
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      locale: TranslationProvider.of(context).flutterLocale,
      home: const SearchScreen(),
    );
  }
}
