// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../search_api_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSearchRepositoriesHash() =>
    r'142199a6a48f799b36f7baed760a924f2cc7d81f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getSearchRepositories].
@ProviderFor(getSearchRepositories)
const getSearchRepositoriesProvider = GetSearchRepositoriesFamily();

/// See also [getSearchRepositories].
class GetSearchRepositoriesFamily extends Family<AsyncValue<void>> {
  /// See also [getSearchRepositories].
  const GetSearchRepositoriesFamily();

  /// See also [getSearchRepositories].
  GetSearchRepositoriesProvider call({
    required String token,
    required String keyword,
    required QueryService<SearchModel> queryService,
  }) {
    return GetSearchRepositoriesProvider(
      token: token,
      keyword: keyword,
      queryService: queryService,
    );
  }

  @override
  GetSearchRepositoriesProvider getProviderOverride(
    covariant GetSearchRepositoriesProvider provider,
  ) {
    return call(
      token: provider.token,
      keyword: provider.keyword,
      queryService: provider.queryService,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSearchRepositoriesProvider';
}

/// See also [getSearchRepositories].
class GetSearchRepositoriesProvider extends AutoDisposeFutureProvider<void> {
  /// See also [getSearchRepositories].
  GetSearchRepositoriesProvider({
    required String token,
    required String keyword,
    required QueryService<SearchModel> queryService,
  }) : this._internal(
          (ref) => getSearchRepositories(
            ref as GetSearchRepositoriesRef,
            token: token,
            keyword: keyword,
            queryService: queryService,
          ),
          from: getSearchRepositoriesProvider,
          name: r'getSearchRepositoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSearchRepositoriesHash,
          dependencies: GetSearchRepositoriesFamily._dependencies,
          allTransitiveDependencies:
              GetSearchRepositoriesFamily._allTransitiveDependencies,
          token: token,
          keyword: keyword,
          queryService: queryService,
        );

  GetSearchRepositoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.token,
    required this.keyword,
    required this.queryService,
  }) : super.internal();

  final String token;
  final String keyword;
  final QueryService<SearchModel> queryService;

  @override
  Override overrideWith(
    FutureOr<void> Function(GetSearchRepositoriesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSearchRepositoriesProvider._internal(
        (ref) => create(ref as GetSearchRepositoriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        token: token,
        keyword: keyword,
        queryService: queryService,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _GetSearchRepositoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSearchRepositoriesProvider &&
        other.token == token &&
        other.keyword == keyword &&
        other.queryService == queryService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);
    hash = _SystemHash.combine(hash, keyword.hashCode);
    hash = _SystemHash.combine(hash, queryService.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSearchRepositoriesRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `token` of this provider.
  String get token;

  /// The parameter `keyword` of this provider.
  String get keyword;

  /// The parameter `queryService` of this provider.
  QueryService<SearchModel> get queryService;
}

class _GetSearchRepositoriesProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with GetSearchRepositoriesRef {
  _GetSearchRepositoriesProviderElement(super.provider);

  @override
  String get token => (origin as GetSearchRepositoriesProvider).token;
  @override
  String get keyword => (origin as GetSearchRepositoriesProvider).keyword;
  @override
  QueryService<SearchModel> get queryService =>
      (origin as GetSearchRepositoriesProvider).queryService;
}

String _$getLocalSearchRepositoriesHash() =>
    r'1df7919a3c5f29397437958be80836954c8b4909';

/// See also [getLocalSearchRepositories].
@ProviderFor(getLocalSearchRepositories)
const getLocalSearchRepositoriesProvider = GetLocalSearchRepositoriesFamily();

/// See also [getLocalSearchRepositories].
class GetLocalSearchRepositoriesFamily extends Family<AsyncValue<void>> {
  /// See also [getLocalSearchRepositories].
  const GetLocalSearchRepositoriesFamily();

  /// See also [getLocalSearchRepositories].
  GetLocalSearchRepositoriesProvider call({
    required QueryService<SearchModel> queryService,
  }) {
    return GetLocalSearchRepositoriesProvider(
      queryService: queryService,
    );
  }

  @override
  GetLocalSearchRepositoriesProvider getProviderOverride(
    covariant GetLocalSearchRepositoriesProvider provider,
  ) {
    return call(
      queryService: provider.queryService,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getLocalSearchRepositoriesProvider';
}

/// See also [getLocalSearchRepositories].
class GetLocalSearchRepositoriesProvider
    extends AutoDisposeFutureProvider<void> {
  /// See also [getLocalSearchRepositories].
  GetLocalSearchRepositoriesProvider({
    required QueryService<SearchModel> queryService,
  }) : this._internal(
          (ref) => getLocalSearchRepositories(
            ref as GetLocalSearchRepositoriesRef,
            queryService: queryService,
          ),
          from: getLocalSearchRepositoriesProvider,
          name: r'getLocalSearchRepositoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getLocalSearchRepositoriesHash,
          dependencies: GetLocalSearchRepositoriesFamily._dependencies,
          allTransitiveDependencies:
              GetLocalSearchRepositoriesFamily._allTransitiveDependencies,
          queryService: queryService,
        );

  GetLocalSearchRepositoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.queryService,
  }) : super.internal();

  final QueryService<SearchModel> queryService;

  @override
  Override overrideWith(
    FutureOr<void> Function(GetLocalSearchRepositoriesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetLocalSearchRepositoriesProvider._internal(
        (ref) => create(ref as GetLocalSearchRepositoriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        queryService: queryService,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _GetLocalSearchRepositoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetLocalSearchRepositoriesProvider &&
        other.queryService == queryService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, queryService.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetLocalSearchRepositoriesRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `queryService` of this provider.
  QueryService<SearchModel> get queryService;
}

class _GetLocalSearchRepositoriesProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with GetLocalSearchRepositoriesRef {
  _GetLocalSearchRepositoriesProviderElement(super.provider);

  @override
  QueryService<SearchModel> get queryService =>
      (origin as GetLocalSearchRepositoriesProvider).queryService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
