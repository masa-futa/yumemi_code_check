import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yumemi_code_check/command_service/search.dart';
import 'package:yumemi_code_check/src/i18n/output/strings.g.dart';
import 'package:yumemi_code_check/thema/custom_theme.dart';

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
      home: const Test(),
    );
  }
}

// TODO(futami): UI構築時に削除予定
class Test extends ConsumerStatefulWidget {
  const Test({super.key});

  @override
  ConsumerState<Test> createState() => _TestState();
}

class _TestState extends ConsumerState<Test> {
  @override
  void initState() {
    ref.read(getSearchCommandProvider(keyword: 'flutter').future);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(i18n.sample.title));
  }
}
