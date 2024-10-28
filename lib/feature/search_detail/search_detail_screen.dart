import 'package:flutter/material.dart';
import 'package:yumemi_code_check/extension/build_context_extension.dart';
import 'package:yumemi_code_check/feature/search_detail/search_detail_component.card.dart';
import 'package:yumemi_code_check/query_service/search_query_state.dart';

class SearchDetailScreen extends StatelessWidget {
  const SearchDetailScreen({
    required this.item,
    super.key,
  });

  final SearchViewState item;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.theme.copyWith(
        iconButtonTheme: const IconButtonThemeData(),
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  item.fullName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
                titlePadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: SearchDetailComponentCard(item: item),
            ),
          ],
        ),
      ),
    );
  }
}
