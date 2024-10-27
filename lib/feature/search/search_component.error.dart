import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:yumemi_code_check/data_source/api_exception.dart';
import 'package:yumemi_code_check/extension/build_context_extension.dart';
import 'package:yumemi_code_check/utils/i18n/output/strings.g.dart';

class SearchComponentErrorWidget extends StatelessWidget {
  const SearchComponentErrorWidget({
    required this.exception,
    super.key,
  });

  final Exception exception;

  String get errorText {
    if (exception is ApiException) {
      final apiException = exception as ApiException;
      return apiException.description;
    } else {
      return i18n.error.common;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          errorText,
          style: TextStyle(
            color: context.theme.colorScheme.secondary,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        const Gap(8),
        Text(
          i18n.error.caption,
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
