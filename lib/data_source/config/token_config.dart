import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/data_source/config/api_config.dart';
import 'package:yumemi_code_check/utils/env/env.dart';

part 'generated/token_config.g.dart';

@Riverpod(keepAlive: true)
TokenConfig tokenConfig(Ref ref) => TokenConfig();

class TokenConfig extends ApiConfig {
  @override
  Map<String, String>? header([String? token]) => {
    ...accept,
    ...jwtAuthorization,
    ...version,
  };

  @override
  String get path => '/app/installations/${Env.installationId}/access_tokens';

  @override
  Query? get query => null;
}