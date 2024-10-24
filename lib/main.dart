import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yumemi_code_check/feature/search/search_screen.dart';
import 'package:yumemi_code_check/thema/custom_theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customTheme = ref.watch(customThemeProvider);
    return MaterialApp(
      theme: customTheme.lightThemeData(context),
      darkTheme: customTheme.darkThemeData(context),
      home: const SearchScreen(),
    );
  }
}
