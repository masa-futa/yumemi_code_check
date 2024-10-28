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

/// See also [get].
@ProviderFor(get)
const getProvider = GetFamily();

/// See also [get].
class GetFamily extends Family<AsyncValue<Response>> {
  /// See also [get].
  const GetFamily();

  /// See also [get].
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

/// See also [get].
class GetProvider extends AutoDisposeFutureProvider<Response> {
  /// See also [get].
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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
