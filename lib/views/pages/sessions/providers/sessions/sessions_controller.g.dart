// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessions_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sessionControllerHash() => r'fcb663220b42628e46c57a7be350500d1b8d39fa';

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

/// See also [sessionController].
@ProviderFor(sessionController)
const sessionControllerProvider = SessionControllerFamily();

/// See also [sessionController].
class SessionControllerFamily extends Family {
  /// See also [sessionController].
  const SessionControllerFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sessionControllerProvider';

  /// See also [sessionController].
  SessionControllerProvider call(
    ID userId,
  ) {
    return SessionControllerProvider(
      userId,
    );
  }

  @visibleForOverriding
  @override
  SessionControllerProvider getProviderOverride(
    covariant SessionControllerProvider provider,
  ) {
    return call(
      provider.userId,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      FutureOr<List<Session>> Function(SessionControllerRef ref) create) {
    return _$SessionControllerFamilyOverride(this, create);
  }
}

class _$SessionControllerFamilyOverride implements FamilyOverride {
  _$SessionControllerFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<List<Session>> Function(SessionControllerRef ref) create;

  @override
  final SessionControllerFamily overriddenFamily;

  @override
  SessionControllerProvider getProviderOverride(
    covariant SessionControllerProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [sessionController].
class SessionControllerProvider
    extends AutoDisposeFutureProvider<List<Session>> {
  /// See also [sessionController].
  SessionControllerProvider(
    ID userId,
  ) : this._internal(
          (ref) => sessionController(
            ref as SessionControllerRef,
            userId,
          ),
          from: sessionControllerProvider,
          name: r'sessionControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sessionControllerHash,
          dependencies: SessionControllerFamily._dependencies,
          allTransitiveDependencies:
              SessionControllerFamily._allTransitiveDependencies,
          userId: userId,
        );

  SessionControllerProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final ID userId;

  @override
  Override overrideWith(
    FutureOr<List<Session>> Function(SessionControllerRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SessionControllerProvider._internal(
        (ref) => create(ref as SessionControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  (ID,) get argument {
    return (userId,);
  }

  @override
  AutoDisposeFutureProviderElement<List<Session>> createElement() {
    return _SessionControllerProviderElement(this);
  }

  SessionControllerProvider _copyWith(
    FutureOr<List<Session>> Function(SessionControllerRef ref) create,
  ) {
    return SessionControllerProvider._internal(
      (ref) => create(ref as SessionControllerRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      userId: userId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SessionControllerProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SessionControllerRef on AutoDisposeFutureProviderRef<List<Session>> {
  /// The parameter `userId` of this provider.
  ID get userId;
}

class _SessionControllerProviderElement
    extends AutoDisposeFutureProviderElement<List<Session>>
    with SessionControllerRef {
  _SessionControllerProviderElement(super.provider);

  @override
  ID get userId => (origin as SessionControllerProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
