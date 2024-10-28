import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:yumemi_code_check/data_source/api_exception.dart';
import 'package:yumemi_code_check/data_source/client/http_client.dart';
import 'package:yumemi_code_check/data_source/client/token_api_client.dart';
import 'package:yumemi_code_check/data_source/config/token_config.dart';
import 'package:yumemi_code_check/utils/result.dart';

import '../create_container.dart';
import '../generate_mocks.mocks.dart';

void main() {
  final mockTokenConfig = MockTokenConfig();

  group('#getToken(Token取得API Client)', () {
    group('レスポンスが正常に返却され、Tokenが存在している場合', () {
      test('取得したTokenが返却されていること', () async {
        final container = createContainer(
          overrides: [
            tokenConfigProvider.overrideWithValue(mockTokenConfig),
            postProvider(
              mockTokenConfig,
            ).overrideWith(
              (_) => http.Response(
                '''
            {
             "token": "0000"
            }
            ''',
                200,
              ),
            ),
          ],
        );

        final result = await container.read(getTokenProvider.future);
        expect(result, isA<Success<String, ApiException>>());
      });
    });

    group('レスポンスのステータスコードが400の場合', () {
      test('Exception（BadRequest）を返却していること', () async {
        final container = createContainer(
          overrides: [
            tokenConfigProvider.overrideWithValue(mockTokenConfig),
            postProvider(
              mockTokenConfig,
            ).overrideWith(
              (_) => http.Response(
                '',
                400,
              ),
            ),
          ],
        );

        final result = await container.read(getTokenProvider.future);
        expect(result, isA<Failure<String, ApiException>>());
      });
    });

    group('レスポンスのステータスコードが401の場合', () {
      test('Exception（Unauthorized）を返却していること', () async {

        final container = createContainer(
          overrides: [
            tokenConfigProvider.overrideWithValue(mockTokenConfig),
            postProvider(
              mockTokenConfig,
            ).overrideWith(
                  (_) => http.Response(
                '',
                401,
              ),
            ),
          ],
        );

        final result = await container.read(getTokenProvider.future);
        expect(result, isA<Failure<String, ApiException>>());
      });
    });

    group('レスポンスのステータスコードがApiExceptionのステータスコード以外の場合', () {
      test('Exception（Unauthorized）を返却していること', () async {

        final container = createContainer(
          overrides: [
            tokenConfigProvider.overrideWithValue(mockTokenConfig),
            postProvider(
              mockTokenConfig,
            ).overrideWith(
                  (_) => http.Response(
                '',
                555,
              ),
            ),
          ],
        );

        final result = await container.read(getTokenProvider.future);
        expect(result, isA<Failure<String, ApiException>>());
      });
    });
  });
}
