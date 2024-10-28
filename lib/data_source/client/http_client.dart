import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/data_source/config/api_config.dart';

part 'generated/http_client.g.dart';

/// Get Request Api Client
///
/// 共通となる[config]を利用し、host / pathを取得
/// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
/// [token]は、GithubApi実施時に必要となる情報
@riverpod
Future<Response> get(
  Ref ref,
  ApiConfig config, [
  Map<String, dynamic>? query,
  String? token,
]) async {
  return http.get(
    Uri.https(
      config.host,
      config.path,
      query,
    ),
    headers: config.header(token),
  );
}

/// Post Request Api Client
///
/// 共通となる[config]を利用し、host / pathを取得
/// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
@riverpod
Future<Response> post(
    Ref ref,
    ApiConfig config, [
      Map<String, dynamic>? query,
    ]) async {
  return http.post(
    Uri.https(
      config.host,
      config.path,
      query,
    ),
    headers: config.header(),
  );
}
