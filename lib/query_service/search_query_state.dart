
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yumemi_code_check/model/search_model.dart';

part 'generated/search_query_state.freezed.dart';

@freezed
class SearchQueryState with _$SearchQueryState {
  const factory SearchQueryState({
    @Default(AsyncValue.loading()) AsyncValue<SearchModel> searchModel,
}) = _SearchQueryState;
}