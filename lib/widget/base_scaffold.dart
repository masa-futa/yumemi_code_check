import 'package:flutter/material.dart';
import 'package:yumemi_code_check/extension/build_context_extension.dart';
import 'package:yumemi_code_check/feature/debug/debug_screen.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    required this.body,
    this.appBar,
    super.key,
  });

  final AppBar? appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: context.theme.colorScheme.primary,
        foregroundColor: context.theme.colorScheme.onPrimary,
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (context) => const DebugScreen()),
        ),
        child: const Icon(Icons.insert_emoticon_outlined),
      ),
      body: body,
    );
  }
}
