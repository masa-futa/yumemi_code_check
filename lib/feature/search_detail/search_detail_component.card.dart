import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:yumemi_code_check/extension/build_context_extension.dart';
import 'package:yumemi_code_check/query_service/search_query_state.dart';
import 'package:yumemi_code_check/utils/i18n/output/strings.g.dart';

class SearchDetailComponentCard extends ConsumerWidget {
  const SearchDetailComponentCard({
    required this.item,
    super.key,
  });

  final SearchViewState item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: context.theme.colorScheme.surface,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border:
            Border.all(color: context.theme.colorScheme.outline, width: 0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _SearchHeaderItemWidget(
            ownerIconUrl: item.avatarUrl,
            repositoryName: item.fullName,
            language: item.language,
          ),
          const Gap(16),
          const Divider(height: 0.5),
          const Gap(12),
          _SearchContentItemWidget(
            title: i18n.search.card.star,
            iconData: Icons.star,
            count: item.stargazersCount,
          ),
          _SearchContentItemWidget(
            title: i18n.search.card.fork,
            iconData: Icons.account_tree_outlined,
            count: item.forksCount,
          ),
          _SearchContentItemWidget(
            title: i18n.search.card.issue,
            iconData: Icons.radio_button_checked,
            count: item.openIssuesCount,
          ),
          _SearchContentItemWidget(
            title: i18n.search.card.watch,
            iconData: Icons.visibility,
            count: item.watchersCount,
          ),
        ],
      ),
    );
  }
}

class _SearchHeaderItemWidget extends StatelessWidget {
  const _SearchHeaderItemWidget({
    required this.ownerIconUrl,
    required this.repositoryName,
    required this.language,
  });

  final String ownerIconUrl;
  final String repositoryName;
  final String language;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: ownerIconUrl,
          imageBuilder: (context, imageProvider) => Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        const Gap(16),
        Expanded(
          child:
          Text(
            language,
            style: TextStyle(
              color: context.theme.colorScheme.primary,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class _SearchContentItemWidget extends StatelessWidget {
  const _SearchContentItemWidget({
    required this.title,
    required this.iconData,
    required this.count,
  });

  final String title;
  final IconData iconData;
  final String count;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.4,
      alignment: Alignment.centerRight,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Icon(
                  iconData,
                  size: 14,
                  color: context.theme.colorScheme.tertiary,
                ),
                const Gap(4),
                Text(
                  title,
                  style: TextStyle(
                    color: context.theme.colorScheme.secondary,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const Gap(8),
          Text(
            count,
            style: TextStyle(
              color: context.theme.colorScheme.tertiary,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
