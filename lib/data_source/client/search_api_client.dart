import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/data_source/api_exception.dart';
import 'package:yumemi_code_check/data_source/config/search_config.dart';
import 'package:yumemi_code_check/model/search_model.dart';
import 'package:yumemi_code_check/query_service/query_service.dart';
import 'package:yumemi_code_check/utils/constant/api_client_constant.dart';
import 'package:yumemi_code_check/utils/result.dart';

part 'generated/search_api_client.g.dart';

@riverpod
Future<void> getSearchRepositories(
  Ref ref, {
  required String token,
  required String keyword,
  required QueryService<SearchModel> queryService,
}) async {
  final config = ref.read(searchConfigProvider);
  try {
    final response = await http.get(
      Uri.https(config.host, config.path, config.query?.get(keyword)),
      headers: config.header(token),
    );

    if (response.statusCode > ApiClientConstant.successStatusCode) {
      final exception =
          ref.read(apiExceptionProvider(statucCode: response.statusCode));
      queryService.subscribe(Failure(exception, StackTrace.empty));
      return;
    }
    final decoded = json.decode(response.body) as Map<String, dynamic>;
    final searchModel = SearchModel.fromJson(decoded);
    queryService.subscribe(Success(searchModel));
  } on ApiException catch (e, s) {
    queryService.subscribe(Failure(e, s));
  }
}
