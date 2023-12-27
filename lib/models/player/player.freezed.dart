// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Player {
  String get name => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get xId => throw _privateConstructorUsedError;
  String? get discordId => throw _privateConstructorUsedError;
  Character? get character => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call(
      {String name,
      String? userId,
      String? xId,
      String? discordId,
      Character? character});

  $CharacterCopyWith<$Res>? get character;
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? userId = freezed,
    Object? xId = freezed,
    Object? discordId = freezed,
    Object? character = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      xId: freezed == xId
          ? _value.xId
          : xId // ignore: cast_nullable_to_non_nullable
              as String?,
      discordId: freezed == discordId
          ? _value.discordId
          : discordId // ignore: cast_nullable_to_non_nullable
              as String?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res>? get character {
    if (_value.character == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_value.character!, (value) {
      return _then(_value.copyWith(character: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerImplCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$PlayerImplCopyWith(
          _$PlayerImpl value, $Res Function(_$PlayerImpl) then) =
      __$$PlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? userId,
      String? xId,
      String? discordId,
      Character? character});

  @override
  $CharacterCopyWith<$Res>? get character;
}

/// @nodoc
class __$$PlayerImplCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$PlayerImpl>
    implements _$$PlayerImplCopyWith<$Res> {
  __$$PlayerImplCopyWithImpl(
      _$PlayerImpl _value, $Res Function(_$PlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? userId = freezed,
    Object? xId = freezed,
    Object? discordId = freezed,
    Object? character = freezed,
  }) {
    return _then(_$PlayerImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      xId: freezed == xId
          ? _value.xId
          : xId // ignore: cast_nullable_to_non_nullable
              as String?,
      discordId: freezed == discordId
          ? _value.discordId
          : discordId // ignore: cast_nullable_to_non_nullable
              as String?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
    ));
  }
}

/// @nodoc

class _$PlayerImpl implements _Player {
  const _$PlayerImpl(
      {required this.name,
      this.userId,
      this.xId,
      this.discordId,
      this.character});

  @override
  final String name;
  @override
  final String? userId;
  @override
  final String? xId;
  @override
  final String? discordId;
  @override
  final Character? character;

  @override
  String toString() {
    return 'Player(name: $name, userId: $userId, xId: $xId, discordId: $discordId, character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.xId, xId) || other.xId == xId) &&
            (identical(other.discordId, discordId) ||
                other.discordId == discordId) &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, userId, xId, discordId, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      __$$PlayerImplCopyWithImpl<_$PlayerImpl>(this, _$identity);
}

abstract class _Player implements Player {
  const factory _Player(
      {required final String name,
      final String? userId,
      final String? xId,
      final String? discordId,
      final Character? character}) = _$PlayerImpl;

  @override
  String get name;
  @override
  String? get userId;
  @override
  String? get xId;
  @override
  String? get discordId;
  @override
  Character? get character;
  @override
  @JsonKey(ignore: true)
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
