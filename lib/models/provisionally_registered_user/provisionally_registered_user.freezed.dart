// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provisionally_registered_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProvisionallyRegisteredUser _$ProvisionallyRegisteredUserFromJson(
    Map<String, dynamic> json) {
  return _ProvisionallyRegisteredUser.fromJson(json);
}

/// @nodoc
mixin _$ProvisionallyRegisteredUser {
  ID get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this ProvisionallyRegisteredUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProvisionallyRegisteredUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProvisionallyRegisteredUserCopyWith<ProvisionallyRegisteredUser>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvisionallyRegisteredUserCopyWith<$Res> {
  factory $ProvisionallyRegisteredUserCopyWith(
          ProvisionallyRegisteredUser value,
          $Res Function(ProvisionallyRegisteredUser) then) =
      _$ProvisionallyRegisteredUserCopyWithImpl<$Res,
          ProvisionallyRegisteredUser>;
  @useResult
  $Res call({ID id, String? name, String? avatarUrl});
}

/// @nodoc
class _$ProvisionallyRegisteredUserCopyWithImpl<$Res,
        $Val extends ProvisionallyRegisteredUser>
    implements $ProvisionallyRegisteredUserCopyWith<$Res> {
  _$ProvisionallyRegisteredUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProvisionallyRegisteredUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProvisionallyRegisteredUserImplCopyWith<$Res>
    implements $ProvisionallyRegisteredUserCopyWith<$Res> {
  factory _$$ProvisionallyRegisteredUserImplCopyWith(
          _$ProvisionallyRegisteredUserImpl value,
          $Res Function(_$ProvisionallyRegisteredUserImpl) then) =
      __$$ProvisionallyRegisteredUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ID id, String? name, String? avatarUrl});
}

/// @nodoc
class __$$ProvisionallyRegisteredUserImplCopyWithImpl<$Res>
    extends _$ProvisionallyRegisteredUserCopyWithImpl<$Res,
        _$ProvisionallyRegisteredUserImpl>
    implements _$$ProvisionallyRegisteredUserImplCopyWith<$Res> {
  __$$ProvisionallyRegisteredUserImplCopyWithImpl(
      _$ProvisionallyRegisteredUserImpl _value,
      $Res Function(_$ProvisionallyRegisteredUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProvisionallyRegisteredUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$ProvisionallyRegisteredUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProvisionallyRegisteredUserImpl
    implements _ProvisionallyRegisteredUser {
  const _$ProvisionallyRegisteredUserImpl(
      {required this.id, required this.name, this.avatarUrl});

  factory _$ProvisionallyRegisteredUserImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProvisionallyRegisteredUserImplFromJson(json);

  @override
  final ID id;
  @override
  final String? name;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'ProvisionallyRegisteredUser(id: $id, name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvisionallyRegisteredUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl);

  /// Create a copy of ProvisionallyRegisteredUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvisionallyRegisteredUserImplCopyWith<_$ProvisionallyRegisteredUserImpl>
      get copyWith => __$$ProvisionallyRegisteredUserImplCopyWithImpl<
          _$ProvisionallyRegisteredUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvisionallyRegisteredUserImplToJson(
      this,
    );
  }
}

abstract class _ProvisionallyRegisteredUser
    implements ProvisionallyRegisteredUser {
  const factory _ProvisionallyRegisteredUser(
      {required final ID id,
      required final String? name,
      final String? avatarUrl}) = _$ProvisionallyRegisteredUserImpl;

  factory _ProvisionallyRegisteredUser.fromJson(Map<String, dynamic> json) =
      _$ProvisionallyRegisteredUserImpl.fromJson;

  @override
  ID get id;
  @override
  String? get name;
  @override
  String? get avatarUrl;

  /// Create a copy of ProvisionallyRegisteredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProvisionallyRegisteredUserImplCopyWith<_$ProvisionallyRegisteredUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}
