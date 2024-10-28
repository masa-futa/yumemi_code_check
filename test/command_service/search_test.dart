import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:yumemi_code_check/command_service/search.dart';
import 'package:yumemi_code_check/data_source/api_exception.dart';
import 'package:yumemi_code_check/data_source/client/search_api_client.dart';
import 'package:yumemi_code_check/data_source/client/token_api_client.dart';
import 'package:yumemi_code_check/data_source/local_storage/local_storage_client.dart';
import 'package:yumemi_code_check/utils/result.dart';

import '../create_container.dart';
import '../generate_mocks.mocks.dart';

void main() {
  final mockLocalStorageClient = MockLocalStorageClient();
  final mockSearchQuery = MockSearchQuery();

  group('#getSearchCommand(リポジトリ検索イベント実施コマンド)', () {
    group('デバッグ機能OFF / Token取得が正常な場合', () {
      test('リポジトリ検索を実施(ApiClientを実施)できSuccessが返却されていること', () async {
        final container = createContainer(
          overrides: [
            localStorageClientProvider
                .overrideWithValue(mockLocalStorageClient),
            getTokenProvider.overrideWith((_) => const Success('0000')),
            getSearchRepositoriesProvider(
              token: '0000',
              keyword: 'test',
              queryService: mockSearchQuery,
            ).overrideWith((_) => const Success('')),
          ],
        );
        when(mockLocalStorageClient.getBool(key: StoreKey.debugRepository))
            .thenAnswer(
          (_) => Future.value(false),
        );
        final result = await container.read(
          getSearchCommandProvider(
            keyword: 'test',
            queryService: mockSearchQuery,
          ).future,
        );
        expect(result, isA<Success<void, ApiException>>());
      });
    });

    group('デバッグ機能OFF / Token取得が不能な場合', () {
      test('リポジトリ検索を実施(ApiClientを実施)できず、Exceptionが返却されること', () async {
        final container = createContainer(
          overrides: [
            localStorageClientProvider
                .overrideWithValue(mockLocalStorageClient),
            getTokenProvider.overrideWith(
              (_) => Failure(Other(), StackTrace.empty),
            ),
          ],
        );
        when(mockLocalStorageClient.getBool(key: StoreKey.debugRepository))
            .thenAnswer(
          (_) => Future.value(false),
        );
        final result = await container.read(
          getSearchCommandProvider(
            keyword: 'test',
            queryService: mockSearchQuery,
          ).future,
        );
        expect(result, isA<Failure<void, ApiException>>());
      });
    });

    group('デバッグ機能ONの場合', () {
      test('リポジトリ検索をDebug配置しているJsonから取得でき、Successが返却されていること', () async {
        final container = createContainer(
          overrides: [
            localStorageClientProvider
                .overrideWithValue(mockLocalStorageClient),
            getLocalSearchRepositoriesProvider(queryService: mockSearchQuery)
                .overrideWith((_) => Future.value()),
          ],
        );
        when(mockLocalStorageClient.getBool(key: StoreKey.debugRepository))
            .thenAnswer(
          (_) => Future.value(true),
        );
        final result = await container.read(
          getSearchCommandProvider(
            keyword: 'test',
            queryService: mockSearchQuery,
          ).future,
        );
        expect(result, isA<Success<void, ApiException>>());
      });
    });
  });
}
