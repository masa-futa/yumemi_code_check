import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/data_source/api_exception.dart';
import 'package:yumemi_code_check/model/search_model.dart';
import 'package:yumemi_code_check/query_service/query_service.dart';
import 'package:yumemi_code_check/utils/result.dart';

part 'generated/search_query.g.dart';

@riverpod
class SearchQuery extends _$SearchQuery implements QueryService<SearchModel> {
  @override
  Future<SearchModel> build() async {
    return const SearchModel(id: 1);
  }

  @override
  void subscribe(Result<SearchModel, ApiException> result) {
    switch (result) {
      case Success(:final value):
        state = AsyncData(value);
      case Failure(:final exception, :final stackTrace):
        state = AsyncError(exception, stackTrace);
    }
  }
}
