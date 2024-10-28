import 'package:yumemi_code_check/utils/env/env.dart';

/// API関連のConfiguration
abstract class ApiConfig<T extends Query?> extends Headers {
  final host = 'api.github.com';

  String get path;

  T? get query;

  Map<String, String>? header([String? token]);
}

class Headers {
  final accept = {'Accept': 'application/vnd.github+json'};
  final version = {'X-GitHub-Api-Version': '2022-11-28'};
  final jwtAuthorization = {'Authorization': 'Bearer ${Env.jwt}'};

  Map<String, String> defaultAuthorization(String token) =>
      {'Authorization': 'Bearer $token'};
}

/// Queryオブジェクト用の抽象クラス
/// Api実施時にqueryが必要な場合は、Apiに応じて具象クラスを作成し利用する
abstract class Query {}
