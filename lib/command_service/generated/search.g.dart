// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../search.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSearchCommandHash() => r'ff0e2a97a447197339deaa1eecac0a7e2f9a5cb7';

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

/// See also [getSearchCommand].
@ProviderFor(getSearchCommand)
const getSearchCommandProvider = GetSearchCommandFamily();

/// See also [getSearchCommand].
class GetSearchCommandFamily
    extends Family<AsyncValue<Result<void, ApiException>>> {
  /// See also [getSearchCommand].
  const GetSearchCommandFamily();

  /// See also [getSearchCommand].
  GetSearchCommandProvider call({
    required String keyword,
    required QueryService<SearchModel> queryService,
  }) {
    return GetSearchCommandProvider(
      keyword: keyword,
      queryService: queryService,
    );
  }

  @override
  GetSearchCommandProvider getProviderOverride(
    covariant GetSearchCommandProvider provider,
  ) {
    return call(
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
  String? get name => r'getSearchCommandProvider';
}

/// See also [getSearchCommand].
class GetSearchCommandProvider
    extends AutoDisposeFutureProvider<Result<void, ApiException>> {
  /// See also [getSearchCommand].
  GetSearchCommandProvider({
    required String keyword,
    required QueryService<SearchModel> queryService,
  }) : this._internal(
          (ref) => getSearchCommand(
            ref as GetSearchCommandRef,
            keyword: keyword,
            queryService: queryService,
          ),
          from: getSearchCommandProvider,
          name: r'getSearchCommandProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSearchCommandHash,
          dependencies: GetSearchCommandFamily._dependencies,
          allTransitiveDependencies:
              GetSearchCommandFamily._allTransitiveDependencies,
          keyword: keyword,
          queryService: queryService,
        );

  GetSearchCommandProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.keyword,
    required this.queryService,
  }) : super.internal();

  final String keyword;
  final QueryService<SearchModel> queryService;

  @override
  Override overrideWith(
    FutureOr<Result<void, ApiException>> Function(GetSearchCommandRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSearchCommandProvider._internal(
        (ref) => create(ref as GetSearchCommandRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        keyword: keyword,
        queryService: queryService,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Result<void, ApiException>> createElement() {
    return _GetSearchCommandProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSearchCommandProvider &&
        other.keyword == keyword &&
        other.queryService == queryService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, keyword.hashCode);
    hash = _SystemHash.combine(hash, queryService.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSearchCommandRef
    on AutoDisposeFutureProviderRef<Result<void, ApiException>> {
  /// The parameter `keyword` of this provider.
  String get keyword;

  /// The parameter `queryService` of this provider.
  QueryService<SearchModel> get queryService;
}

class _GetSearchCommandProviderElement
    extends AutoDisposeFutureProviderElement<Result<void, ApiException>>
    with GetSearchCommandRef {
  _GetSearchCommandProviderElement(super.provider);

  @override
  String get keyword => (origin as GetSearchCommandProvider).keyword;
  @override
  QueryService<SearchModel> get queryService =>
      (origin as GetSearchCommandProvider).queryService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
