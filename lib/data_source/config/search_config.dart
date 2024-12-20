import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/data_source/config/api_config.dart';

part 'generated/search_config.g.dart';

/// リポジトリ一覧検索Api用Configuration
@Riverpod(keepAlive: true)
SearchConfig searchConfig(Ref ref) => SearchConfig();

class SearchConfig extends ApiConfig<SearchUrlQuery> {
  SearchConfig();

  @override
  Map<String, String>? header([String? token]) {
    assert(token != null, 'Prerequisite is to have a token');
    return {
      ...accept,
      ...defaultAuthorization(token!),
      ...version,
    };
  }

  @override
  String get path => '/search/repositories';

  @override
  SearchUrlQuery? get query => SearchUrlQuery();
}

/// Uri Queryを指定するQueryオブジェクト
/// 各APIに対して、必要な場合に[Query]を継承し生成する
class SearchUrlQuery extends Query {
  /// [keyword]は検索するキーワードを入力してください。
  /// [page]はページングする値を指定してください。
  Map<String, dynamic> get(String keyword, [int page = 1]) => {
        'q': keyword,
        'per_page': '20',
        'page': '$page',
      };
}
