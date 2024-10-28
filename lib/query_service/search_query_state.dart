import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/search_query_state.freezed.dart';

@freezed
class SearchQueryState with _$SearchQueryState {
  const factory SearchQueryState.init() = _Init;

  const factory SearchQueryState.search({
    @Default(AsyncValue<List<SearchViewState>>.loading())
    AsyncValue<List<SearchViewState>> searchModel,
  }) = _Search;
}

/// リポジトリ一覧検索用のViewState
@freezed
class SearchViewState with _$SearchViewState {
  const factory SearchViewState({
    // リポジトリ名
    required String fullName,
    // オーナーアイコン
    required String avatarUrl,
    // 言語
    required String language,
    // Watcher数
    required String watchersCount,
    // Fork数
    required String forksCount,
    // Issue数
    required String openIssuesCount,
    // スター数
    required String stargazersCount,
  }) = _SearchViewState;
}
