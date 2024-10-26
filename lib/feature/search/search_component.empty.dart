import 'package:flutter/material.dart';
import 'package:yumemi_code_check/extension/build_context_extension.dart';
import 'package:yumemi_code_check/utils/i18n/output/strings.g.dart';

class SearchComponentEmptyWidget extends StatelessWidget {
  const SearchComponentEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          i18n.search.empty,
          style: TextStyle(
            color: context.theme.colorScheme.secondary,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
