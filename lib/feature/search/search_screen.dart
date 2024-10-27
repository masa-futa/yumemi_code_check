import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:yumemi_code_check/feature/search/search_component.card.dart';
import 'package:yumemi_code_check/feature/search/search_component.empty.dart';
import 'package:yumemi_code_check/feature/search/search_component.error.dart';
import 'package:yumemi_code_check/feature/search/search_component.header.dart';
import 'package:yumemi_code_check/query_service/search_query.dart';
import 'package:yumemi_code_check/utils/i18n/output/strings.g.dart';
import 'package:yumemi_code_check/widget/base_scaffold.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                i18n.search.title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              centerTitle: false,
              titlePadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
            pinned: true,
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            sliver: SliverToBoxAdapter(
              child: SearchComponentHeader(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            sliver: SliverToBoxAdapter(
              child: ref.watch(searchQueryProvider).when(
                    init: SearchComponentEmptyWidget.new,
                    search: (model) => switch (model) {
                      AsyncError(:final error) => SearchComponentErrorWidget(
                          exception: error as Exception,
                        ),
                      AsyncData(:final value) => ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) =>
                              SearchComponentCard(item: value[index]),
                          separatorBuilder: (context, index) => const Gap(24),
                          itemCount: value.length,
                        ),
                      _ => const Center(child: CircularProgressIndicator())
                    },
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
