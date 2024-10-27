import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yumemi_code_check/data_source/local_storage/local_storage_client.dart';
import 'package:yumemi_code_check/extension/build_context_extension.dart';

class DebugScreen extends ConsumerWidget {
  const DebugScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Theme(
      data: context.theme.copyWith(
        // 共通で利用しているIconButtonThemeに干渉し、
        // ScaffoldのIconButton（Back Button）にも影響が出てしまうため
        // 明示的に値を上書きしている。（影響は本Widgetのみとなる）
        iconButtonTheme: const IconButtonThemeData(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'デバッグ機能',
            style: TextStyle(
              color: context.theme.colorScheme.primary,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _DebugItem(
                title: 'リポジトリ検索',
                storeKey: StoreKey.debugRepository,
                onChanged: (value) async {
                  await ref
                      .read(localStorageClientProvider)
                      .setBool(key: StoreKey.debugRepository, value: value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DebugItem extends ConsumerStatefulWidget {
  const _DebugItem({
    required this.title,
    required this.storeKey,
    required this.onChanged,
  });

  final String title;
  final StoreKey storeKey;
  final ValueChanged<bool> onChanged;

  @override
  ConsumerState<_DebugItem> createState() => _DebugItemState();
}

class _DebugItemState extends ConsumerState<_DebugItem> {
  bool value = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final localValue = await ref
              .read(localStorageClientProvider)
              .getBool(key: widget.storeKey) ??
          false;
      setState(() {
        value = localValue;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: TextStyle(
          color: context.theme.colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Switch(
        value: value,
        onChanged: (newValue) {
          widget.onChanged.call(newValue);
          setState(() {
            value = newValue;
          });
        },
      ),
    );
  }
}
