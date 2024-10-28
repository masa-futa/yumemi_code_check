import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/data_source/config/api_config.dart';

part 'generated/http_client.g.dart';

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
