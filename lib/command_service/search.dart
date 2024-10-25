import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/data_source/client/token_api_client.dart';
import 'package:yumemi_code_check/data_source/api_exception.dart';
import 'package:yumemi_code_check/data_source/client/search_api_client.dart';
import 'package:yumemi_code_check/query_service/search_query.dart';
import 'package:yumemi_code_check/utils/result.dart';

part 'generated/search.g.dart';

@riverpod
Future<Result<void, ApiException>> getSearchCommand(
  Ref ref, {
  required String keyword,
}) async {
  try {
    final result = await ref.read(getTokenProvider.future);
    final token = switch (result) {
      Success(:final value) => value,
      Failure(:final exception) => throw exception,
    };

    await ref.read(
      getSearchRepositoriesProvider(
        token: token,
        keyword: keyword,
        queryService: ref.read(searchQueryProvider.notifier),
      ).future,
    );
    return Success.noValue();
  } on ApiException catch (e, s) {
    return Failure(e, s);
  }
}
