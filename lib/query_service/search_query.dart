import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/data_source/api_exception.dart';
import 'package:yumemi_code_check/extension/int_extension.dart';
import 'package:yumemi_code_check/model/search_model.dart';
import 'package:yumemi_code_check/query_service/query_service.dart';
import 'package:yumemi_code_check/query_service/search_query_state.dart';
import 'package:yumemi_code_check/utils/result.dart';

part 'generated/search_query.g.dart';

/// リポジトリ一覧検索時のQuery
@riverpod
class SearchQuery extends _$SearchQuery implements QueryService<SearchModel> {
  @override
  SearchQueryState build() {
    return const SearchQueryState.init();
  }

  void search() {
    state = const SearchQueryState.search();
  }

  void exception(ApiException e, StackTrace s) {
    state = SearchQueryState.search(searchModel: AsyncError(e, s));
  }

  @override
  void subscribe(Result<SearchModel, ApiException> result) {
    switch (result) {
      case Success(:final value):
        state = SearchQueryState.search(
          searchModel: AsyncData(_convertSearchModel(value)),
        );
      case Failure(:final exception, :final stackTrace):
        state = SearchQueryState.search(
          searchModel: AsyncError(exception, stackTrace),
        );
    }
  }

  /// Entityを画面で利用する情報にconvertする
  List<SearchViewState> _convertSearchModel(SearchModel model) => model.items
      .map(
        (e) => SearchViewState(
          fullName: e.fullName ?? '-',
          avatarUrl: e.owner.avatarUrl ?? '',
          language: e.language ?? '-',
          watchersCount: e.watchersCount.formatNumber(),
          forksCount: e.forksCount.formatNumber(),
          openIssuesCount: e.openIssuesCount.formatNumber(),
          stargazersCount: e.stargazersCount.formatNumber(),
        ),
      )
      .toList();
}
