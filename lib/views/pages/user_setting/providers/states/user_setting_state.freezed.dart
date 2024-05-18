// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserSettingState {
  String get name => throw _privateConstructorUsedError;
  Uint8List? get avatar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSettingStateCopyWith<UserSettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingStateCopyWith<$Res> {
  factory $UserSettingStateCopyWith(
          UserSettingState value, $Res Function(UserSettingState) then) =
      _$UserSettingStateCopyWithImpl<$Res, UserSettingState>;
  @useResult
  $Res call({String name, Uint8List? avatar});
}

/// @nodoc
class _$UserSettingStateCopyWithImpl<$Res, $Val extends UserSettingState>
    implements $UserSettingStateCopyWith<$Res> {
  _$UserSettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSettingStateImplCopyWith<$Res>
    implements $UserSettingStateCopyWith<$Res> {
  factory _$$UserSettingStateImplCopyWith(_$UserSettingStateImpl value,
          $Res Function(_$UserSettingStateImpl) then) =
      __$$UserSettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Uint8List? avatar});
}

/// @nodoc
class __$$UserSettingStateImplCopyWithImpl<$Res>
    extends _$UserSettingStateCopyWithImpl<$Res, _$UserSettingStateImpl>
    implements _$$UserSettingStateImplCopyWith<$Res> {
  __$$UserSettingStateImplCopyWithImpl(_$UserSettingStateImpl _value,
      $Res Function(_$UserSettingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatar = freezed,
  }) {
    return _then(_$UserSettingStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$UserSettingStateImpl implements _UserSettingState {
  const _$UserSettingStateImpl({this.name = '', this.avatar});

  @override
  @JsonKey()
  final String name;
  @override
  final Uint8List? avatar;

  @override
  String toString() {
    return 'UserSettingState(name: $name, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSettingStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSettingStateImplCopyWith<_$UserSettingStateImpl> get copyWith =>
      __$$UserSettingStateImplCopyWithImpl<_$UserSettingStateImpl>(
          this, _$identity);
}

abstract class _UserSettingState implements UserSettingState {
  const factory _UserSettingState(
      {final String name, final Uint8List? avatar}) = _$UserSettingStateImpl;

  @override
  String get name;
  @override
  Uint8List? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$UserSettingStateImplCopyWith<_$UserSettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
