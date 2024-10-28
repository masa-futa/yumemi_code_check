import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'generated/local_storage_client.g.dart';

enum StoreKey {
  debugRepository,
}

@riverpod
LocalStorageClient localStorageClient(Ref ref) => LocalStorageClient(
      SharedPreferencesAsync(),
    );

class LocalStorageClient {
  LocalStorageClient(this.preferences);

  final SharedPreferencesAsync preferences;

  Future<void> setBool({
    required StoreKey key,
    required bool value,
  }) async {
    await preferences.setBool(key.name, value);
  }

  Future<bool?> getBool({
    required StoreKey key,
  }) async =>
      preferences.getBool(key.name);
}
