import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:yumemi_code_check/command_service/search.dart';
import 'package:yumemi_code_check/query_service/search_query.dart';
import 'package:yumemi_code_check/utils/result.dart';

class SearchComponentHeader extends ConsumerStatefulWidget {
  const SearchComponentHeader({super.key});

  @override
  ConsumerState<SearchComponentHeader> createState() =>
      _SearchScreenTextFieldState();
}

class _SearchScreenTextFieldState extends ConsumerState<SearchComponentHeader> {
  late TextEditingController controller;
  bool isEnable = false;

  Future<void> onTappedSearchButton() async {
    ref.read(searchQueryProvider.notifier).search();
    final result = await ref
        .read(getSearchCommandProvider(keyword: controller.value.text).future);
    if (result case Failure(:final exception, :final stackTrace)) {
      ref.read(searchQueryProvider.notifier).exception(exception, stackTrace);
    }
  }

  @override
  void initState() {
    controller = TextEditingController()
      ..addListener(() {
        setState(() {
          isEnable = controller.value.text.isNotEmpty;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(controller: controller),
        ),
        const Gap(4),
        IconButton(
          onPressed: isEnable ? onTappedSearchButton : null,
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
