// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../search.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSearchCommandHash() => r'486d19544c2d0e45cb66631bb83723582cb2095d';

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
  }) {
    return GetSearchCommandProvider(
      keyword: keyword,
    );
  }

  @override
  GetSearchCommandProvider getProviderOverride(
    covariant GetSearchCommandProvider provider,
  ) {
    return call(
      keyword: provider.keyword,
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
  }) : this._internal(
          (ref) => getSearchCommand(
            ref as GetSearchCommandRef,
            keyword: keyword,
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
        );

  GetSearchCommandProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.keyword,
  }) : super.internal();

  final String keyword;

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
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Result<void, ApiException>> createElement() {
    return _GetSearchCommandProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSearchCommandProvider && other.keyword == keyword;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, keyword.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSearchCommandRef
    on AutoDisposeFutureProviderRef<Result<void, ApiException>> {
  /// The parameter `keyword` of this provider.
  String get keyword;
}

class _GetSearchCommandProviderElement
    extends AutoDisposeFutureProviderElement<Result<void, ApiException>>
    with GetSearchCommandRef {
  _GetSearchCommandProviderElement(super.provider);

  @override
  String get keyword => (origin as GetSearchCommandProvider).keyword;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
