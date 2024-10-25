// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../api_exception.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$apiExceptionHash() => r'c0212718e36076e80835d40d7246b4a9f51599e9';

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

/// See also [apiException].
@ProviderFor(apiException)
const apiExceptionProvider = ApiExceptionFamily();

/// See also [apiException].
class ApiExceptionFamily extends Family<ApiException> {
  /// See also [apiException].
  const ApiExceptionFamily();

  /// See also [apiException].
  ApiExceptionProvider call({
    required int statucCode,
  }) {
    return ApiExceptionProvider(
      statucCode: statucCode,
    );
  }

  @override
  ApiExceptionProvider getProviderOverride(
    covariant ApiExceptionProvider provider,
  ) {
    return call(
      statucCode: provider.statucCode,
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
  String? get name => r'apiExceptionProvider';
}

/// See also [apiException].
class ApiExceptionProvider extends AutoDisposeProvider<ApiException> {
  /// See also [apiException].
  ApiExceptionProvider({
    required int statucCode,
  }) : this._internal(
          (ref) => apiException(
            ref as ApiExceptionRef,
            statucCode: statucCode,
          ),
          from: apiExceptionProvider,
          name: r'apiExceptionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$apiExceptionHash,
          dependencies: ApiExceptionFamily._dependencies,
          allTransitiveDependencies:
              ApiExceptionFamily._allTransitiveDependencies,
          statucCode: statucCode,
        );

  ApiExceptionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.statucCode,
  }) : super.internal();

  final int statucCode;

  @override
  Override overrideWith(
    ApiException Function(ApiExceptionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ApiExceptionProvider._internal(
        (ref) => create(ref as ApiExceptionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        statucCode: statucCode,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ApiException> createElement() {
    return _ApiExceptionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ApiExceptionProvider && other.statucCode == statucCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, statucCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ApiExceptionRef on AutoDisposeProviderRef<ApiException> {
  /// The parameter `statucCode` of this provider.
  int get statucCode;
}

class _ApiExceptionProviderElement
    extends AutoDisposeProviderElement<ApiException> with ApiExceptionRef {
  _ApiExceptionProviderElement(super.provider);

  @override
  int get statucCode => (origin as ApiExceptionProvider).statucCode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
