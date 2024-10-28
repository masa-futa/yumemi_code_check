import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/data_source/api_exception.dart';
import 'package:yumemi_code_check/data_source/client/http_client.dart';
import 'package:yumemi_code_check/data_source/config/token_config.dart';
import 'package:yumemi_code_check/model/token_model.dart';
import 'package:yumemi_code_check/utils/constant/api_client_constant.dart';
import 'package:yumemi_code_check/utils/result.dart';

part 'generated/token_api_client.g.dart';

@riverpod
Future<Result<String, ApiException>> getToken(Ref ref) async {
  final config = ref.read(tokenConfigProvider);

  try {
    final response = await ref.read(getProvider(config).future);
    if (response.statusCode > ApiClientConstant.successStatusCode) {
      final exception =
          ref.read(apiExceptionProvider(statucCode: response.statusCode));
      return Failure(exception, StackTrace.empty);
    }

    final decoded = json.decode(response.body) as Map<String, dynamic>;
    final token = TokenModel.fromJson(decoded).token;
    return Success(token);
  } on ApiException catch (e, s) {
    return Failure(e, s);
  }
}
