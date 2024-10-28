import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:yumemi_code_check/data_source/client/http_client.dart';
import 'package:yumemi_code_check/data_source/client/search_api_client.dart';
import 'package:yumemi_code_check/data_source/config/search_config.dart';
import 'package:yumemi_code_check/utils/gen/assets.gen.dart';

import '../create_container.dart';
import '../generate_mocks.mocks.dart';

void main() {
  final mockSearchConfig = MockSearchConfig();
  final mockSearchUrlQuery = MockSearchUrlQuery();
  final mockSearchQuery = MockSearchQuery();

  setUp(TestWidgetsFlutterBinding.ensureInitialized);

  group('#getSearchRepositories(リポジトリ一覧取得API Client)', () {
    group('レスポンスが正常に返却され、Tokenが存在している場合', () {
      test('queryServiceにSearchModelを受け渡していること', () async {
        when(mockSearchConfig.query).thenReturn(mockSearchUrlQuery);
        when(mockSearchUrlQuery.get('test')).thenReturn({});

        final response = await rootBundle.loadString(Assets.searchRepositories);
        final container = createContainer(
          overrides: [
            searchConfigProvider.overrideWithValue(mockSearchConfig),
            getProvider(
              mockSearchConfig,
              mockSearchConfig.query!.get('test'),
              '0000',
            ).overrideWith((_) => http.Response(response, 200)),
          ],
        );

        await container.read(
          getSearchRepositoriesProvider(
            token: '0000',
            keyword: 'test',
            queryService: mockSearchQuery,
          ).future,
        );
        verify(mockSearchQuery.subscribe(any)).called(1);
      });
    });

    group('レスポンスのステータスコードが400の場合', () {
      test('queryServiceにException（BadRequest）を受け渡していること', () async {
        when(mockSearchConfig.query).thenReturn(mockSearchUrlQuery);
        when(mockSearchUrlQuery.get('test')).thenReturn({});

        final container = createContainer(
          overrides: [
            searchConfigProvider.overrideWithValue(mockSearchConfig),
            getProvider(
              mockSearchConfig,
              mockSearchConfig.query!.get('test'),
              '0000',
            ).overrideWith((_) => http.Response('', 400)),
          ],
        );

        await container.read(
          getSearchRepositoriesProvider(
            token: '0000',
            keyword: 'test',
            queryService: mockSearchQuery,
          ).future,
        );
        verify(mockSearchQuery.subscribe(any)).called(1);
      });
    });

    group('レスポンスのステータスコードが401の場合', () {
      test('queryServiceにException（Unauthorized）を受け渡していること', () async {
        when(mockSearchConfig.query).thenReturn(mockSearchUrlQuery);
        when(mockSearchUrlQuery.get('test')).thenReturn({});

        final container = createContainer(
          overrides: [
            searchConfigProvider.overrideWithValue(mockSearchConfig),
            getProvider(
              mockSearchConfig,
              mockSearchConfig.query!.get('test'),
              '0000',
            ).overrideWith((_) => http.Response('', 401)),
          ],
        );

        await container.read(
          getSearchRepositoriesProvider(
            token: '0000',
            keyword: 'test',
            queryService: mockSearchQuery,
          ).future,
        );
        verify(mockSearchQuery.subscribe(any)).called(1);
      });
    });

    group('レスポンスのステータスコードがApiExceptionのステータスコード以外の場合', () {
      test('queryServiceにException（Unauthorized）を受け渡していること', () async {
        when(mockSearchConfig.query).thenReturn(mockSearchUrlQuery);
        when(mockSearchUrlQuery.get('test')).thenReturn({});

        final container = createContainer(
          overrides: [
            searchConfigProvider.overrideWithValue(mockSearchConfig),
            getProvider(
              mockSearchConfig,
              mockSearchConfig.query!.get('test'),
              '0000',
            ).overrideWith((_) => http.Response('', 555)),
          ],
        );

        await container.read(
          getSearchRepositoriesProvider(
            token: '0000',
            keyword: 'test',
            queryService: mockSearchQuery,
          ).future,
        );
        verify(mockSearchQuery.subscribe(any)).called(1);
      });
    });
  });
}
