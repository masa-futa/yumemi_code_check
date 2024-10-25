import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/data_source/api_exception.dart';
import 'package:yumemi_code_check/model/search_model.dart';
import 'package:yumemi_code_check/query_service/query_service.dart';
import 'package:yumemi_code_check/query_service/search_query_state.dart';
import 'package:yumemi_code_check/utils/result.dart';

part 'generated/search_query.g.dart';

@riverpod
class SearchQuery extends _$SearchQuery implements QueryService<SearchModel> {
  @override
  SearchQueryState build() {
    return const SearchQueryState();
  }

  @override
  void subscribe(Result<SearchModel, ApiException> result) {
    switch (result) {
      case Success(:final value):
        state = state.copyWith(searchModel: AsyncData(value));
      case Failure(:final exception, :final stackTrace):
        state = state.copyWith(searchModel: AsyncError(exception, stackTrace));
    }
  }
}
