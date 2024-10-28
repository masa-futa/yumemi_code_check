// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../http_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getHash() => r'cedfc1d848427edc8c57f46662276b902dfc3543';

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

/// Get Request Api Client
///
/// 共通となる[config]を利用し、host / pathを取得
/// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
/// [token]は、GithubApi実施時に必要となる情報
///
/// Copied from [get].
@ProviderFor(get)
const getProvider = GetFamily();

/// Get Request Api Client
///
/// 共通となる[config]を利用し、host / pathを取得
/// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
/// [token]は、GithubApi実施時に必要となる情報
///
/// Copied from [get].
class GetFamily extends Family<AsyncValue<Response>> {
  /// Get Request Api Client
  ///
  /// 共通となる[config]を利用し、host / pathを取得
  /// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
  /// [token]は、GithubApi実施時に必要となる情報
  ///
  /// Copied from [get].
  const GetFamily();

  /// Get Request Api Client
  ///
  /// 共通となる[config]を利用し、host / pathを取得
  /// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
  /// [token]は、GithubApi実施時に必要となる情報
  ///
  /// Copied from [get].
  GetProvider call(
    ApiConfig<Query?> config, [
    Map<String, dynamic>? query,
    String? token,
  ]) {
    return GetProvider(
      config,
      query,
      token,
    );
  }

  @override
  GetProvider getProviderOverride(
    covariant GetProvider provider,
  ) {
    return call(
      provider.config,
      provider.query,
      provider.token,
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
  String? get name => r'getProvider';
}

/// Get Request Api Client
///
/// 共通となる[config]を利用し、host / pathを取得
/// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
/// [token]は、GithubApi実施時に必要となる情報
///
/// Copied from [get].
class GetProvider extends AutoDisposeFutureProvider<Response> {
  /// Get Request Api Client
  ///
  /// 共通となる[config]を利用し、host / pathを取得
  /// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
  /// [token]は、GithubApi実施時に必要となる情報
  ///
  /// Copied from [get].
  GetProvider(
    ApiConfig<Query?> config, [
    Map<String, dynamic>? query,
    String? token,
  ]) : this._internal(
          (ref) => get(
            ref as GetRef,
            config,
            query,
            token,
          ),
          from: getProvider,
          name: r'getProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$getHash,
          dependencies: GetFamily._dependencies,
          allTransitiveDependencies: GetFamily._allTransitiveDependencies,
          config: config,
          query: query,
          token: token,
        );

  GetProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.config,
    required this.query,
    required this.token,
  }) : super.internal();

  final ApiConfig<Query?> config;
  final Map<String, dynamic>? query;
  final String? token;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetProvider._internal(
        (ref) => create(ref as GetRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        config: config,
        query: query,
        token: token,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetProvider &&
        other.config == config &&
        other.query == query &&
        other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, config.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `config` of this provider.
  ApiConfig<Query?> get config;

  /// The parameter `query` of this provider.
  Map<String, dynamic>? get query;

  /// The parameter `token` of this provider.
  String? get token;
}

class _GetProviderElement extends AutoDisposeFutureProviderElement<Response>
    with GetRef {
  _GetProviderElement(super.provider);

  @override
  ApiConfig<Query?> get config => (origin as GetProvider).config;
  @override
  Map<String, dynamic>? get query => (origin as GetProvider).query;
  @override
  String? get token => (origin as GetProvider).token;
}

String _$postHash() => r'd56d63d6022cece4366f0152f7cedc7fd0235cc9';

/// Post Request Api Client
///
/// 共通となる[config]を利用し、host / pathを取得
/// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
///
/// Copied from [post].
@ProviderFor(post)
const postProvider = PostFamily();

/// Post Request Api Client
///
/// 共通となる[config]を利用し、host / pathを取得
/// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
///
/// Copied from [post].
class PostFamily extends Family<AsyncValue<Response>> {
  /// Post Request Api Client
  ///
  /// 共通となる[config]を利用し、host / pathを取得
  /// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
  ///
  /// Copied from [post].
  const PostFamily();

  /// Post Request Api Client
  ///
  /// 共通となる[config]を利用し、host / pathを取得
  /// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
  ///
  /// Copied from [post].
  PostProvider call(
    ApiConfig<Query?> config, [
    Map<String, dynamic>? query,
  ]) {
    return PostProvider(
      config,
      query,
    );
  }

  @override
  PostProvider getProviderOverride(
    covariant PostProvider provider,
  ) {
    return call(
      provider.config,
      provider.query,
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
  String? get name => r'postProvider';
}

/// Post Request Api Client
///
/// 共通となる[config]を利用し、host / pathを取得
/// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
///
/// Copied from [post].
class PostProvider extends AutoDisposeFutureProvider<Response> {
  /// Post Request Api Client
  ///
  /// 共通となる[config]を利用し、host / pathを取得
  /// [query]は、APIに応じて必要不必要が分かれるため、null許容としている
  ///
  /// Copied from [post].
  PostProvider(
    ApiConfig<Query?> config, [
    Map<String, dynamic>? query,
  ]) : this._internal(
          (ref) => post(
            ref as PostRef,
            config,
            query,
          ),
          from: postProvider,
          name: r'postProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$postHash,
          dependencies: PostFamily._dependencies,
          allTransitiveDependencies: PostFamily._allTransitiveDependencies,
          config: config,
          query: query,
        );

  PostProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.config,
    required this.query,
  }) : super.internal();

  final ApiConfig<Query?> config;
  final Map<String, dynamic>? query;

  @override
  Override overrideWith(
    FutureOr<Response> Function(PostRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostProvider._internal(
        (ref) => create(ref as PostRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        config: config,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _PostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostProvider &&
        other.config == config &&
        other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, config.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PostRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `config` of this provider.
  ApiConfig<Query?> get config;

  /// The parameter `query` of this provider.
  Map<String, dynamic>? get query;
}

class _PostProviderElement extends AutoDisposeFutureProviderElement<Response>
    with PostRef {
  _PostProviderElement(super.provider);

  @override
  ApiConfig<Query?> get config => (origin as PostProvider).config;
  @override
  Map<String, dynamic>? get query => (origin as PostProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
