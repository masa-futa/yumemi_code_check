import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/data_source/config/api_config.dart';

part 'generated/search_config.g.dart';

@Riverpod(keepAlive: true)
SearchConfig searchConfig(Ref ref) => SearchConfig();

class SearchConfig extends ApiConfig<SearchQuery> {
  SearchConfig();

  @override
  Map<String, String>? header([String? token]) {
    assert(token != null);
    return {
      ...accept,
      ...defaultAuthorization(token!),
      ...version,
    };
  }

  @override
  String get path => '/search/repositories';

  @override
  SearchQuery? get query => SearchQuery();
}

/// Uri Queryを指定するQueryオブジェクト
/// 各APIに対して、必要な場合に[Query]を継承し生成する
/// [keyword]は検索するキーワードを入力してください。
/// [page]はページングする値を指定してください。
class SearchQuery extends Query {
  Map<String, dynamic> get(String keyword, [int page = 1]) => {
        'q': keyword,
        'per_page': '20',
        'page': '$page',
      };
}
