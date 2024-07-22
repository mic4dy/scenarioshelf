// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_participant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewParticipant {
  ID get id => throw _privateConstructorUsedError;
  ID get sessionId => throw _privateConstructorUsedError;
  ParticipantRole get role => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ID? get userId => throw _privateConstructorUsedError;
  String? get xId => throw _privateConstructorUsedError;
  String? get discordId => throw _privateConstructorUsedError;
  String? get characterId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ID id,
            ID sessionId,
            ParticipantRole role,
            String name,
            ID? userId,
            String? xId,
            String? discordId,
            String? characterId)
        inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ID id, ID sessionId, ParticipantRole role, String name,
            ID? userId, String? xId, String? discordId, String? characterId)?
        inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ID id, ID sessionId, ParticipantRole role, String name,
            ID? userId, String? xId, String? discordId, String? characterId)?
        inserting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewParticipantInserting value) inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewParticipantInserting value)? inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewParticipantInserting value)? inserting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NewParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewParticipantCopyWith<NewParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewParticipantCopyWith<$Res> {
  factory $NewParticipantCopyWith(
          NewParticipant value, $Res Function(NewParticipant) then) =
      _$NewParticipantCopyWithImpl<$Res, NewParticipant>;
  @useResult
  $Res call(
      {ID id,
      ID sessionId,
      ParticipantRole role,
      String name,
      ID? userId,
      String? xId,
      String? discordId,
      String? characterId});
}

/// @nodoc
class _$NewParticipantCopyWithImpl<$Res, $Val extends NewParticipant>
    implements $NewParticipantCopyWith<$Res> {
  _$NewParticipantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? role = null,
    Object? name = null,
    Object? userId = freezed,
    Object? xId = freezed,
    Object? discordId = freezed,
    Object? characterId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as ID,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ParticipantRole,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ID?,
      xId: freezed == xId
          ? _value.xId
          : xId // ignore: cast_nullable_to_non_nullable
              as String?,
      discordId: freezed == discordId
          ? _value.discordId
          : discordId // ignore: cast_nullable_to_non_nullable
              as String?,
      characterId: freezed == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewParticipantInsertingImplCopyWith<$Res>
    implements $NewParticipantCopyWith<$Res> {
  factory _$$NewParticipantInsertingImplCopyWith(
          _$NewParticipantInsertingImpl value,
          $Res Function(_$NewParticipantInsertingImpl) then) =
      __$$NewParticipantInsertingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ID id,
      ID sessionId,
      ParticipantRole role,
      String name,
      ID? userId,
      String? xId,
      String? discordId,
      String? characterId});
}

/// @nodoc
class __$$NewParticipantInsertingImplCopyWithImpl<$Res>
    extends _$NewParticipantCopyWithImpl<$Res, _$NewParticipantInsertingImpl>
    implements _$$NewParticipantInsertingImplCopyWith<$Res> {
  __$$NewParticipantInsertingImplCopyWithImpl(
      _$NewParticipantInsertingImpl _value,
      $Res Function(_$NewParticipantInsertingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? role = null,
    Object? name = null,
    Object? userId = freezed,
    Object? xId = freezed,
    Object? discordId = freezed,
    Object? characterId = freezed,
  }) {
    return _then(_$NewParticipantInsertingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as ID,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ParticipantRole,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ID?,
      xId: freezed == xId
          ? _value.xId
          : xId // ignore: cast_nullable_to_non_nullable
              as String?,
      discordId: freezed == discordId
          ? _value.discordId
          : discordId // ignore: cast_nullable_to_non_nullable
              as String?,
      characterId: freezed == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewParticipantInsertingImpl implements _NewParticipantInserting {
  const _$NewParticipantInsertingImpl(
      {required this.id,
      required this.sessionId,
      required this.role,
      required this.name,
      this.userId,
      this.xId,
      this.discordId,
      this.characterId});

  @override
  final ID id;
  @override
  final ID sessionId;
  @override
  final ParticipantRole role;
  @override
  final String name;
  @override
  final ID? userId;
  @override
  final String? xId;
  @override
  final String? discordId;
  @override
  final String? characterId;

  @override
  String toString() {
    return 'NewParticipant.inserting(id: $id, sessionId: $sessionId, role: $role, name: $name, userId: $userId, xId: $xId, discordId: $discordId, characterId: $characterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewParticipantInsertingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.xId, xId) || other.xId == xId) &&
            (identical(other.discordId, discordId) ||
                other.discordId == discordId) &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, sessionId, role, name,
      userId, xId, discordId, characterId);

  /// Create a copy of NewParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewParticipantInsertingImplCopyWith<_$NewParticipantInsertingImpl>
      get copyWith => __$$NewParticipantInsertingImplCopyWithImpl<
          _$NewParticipantInsertingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ID id,
            ID sessionId,
            ParticipantRole role,
            String name,
            ID? userId,
            String? xId,
            String? discordId,
            String? characterId)
        inserting,
  }) {
    return inserting(
        id, sessionId, role, name, userId, xId, discordId, characterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ID id, ID sessionId, ParticipantRole role, String name,
            ID? userId, String? xId, String? discordId, String? characterId)?
        inserting,
  }) {
    return inserting?.call(
        id, sessionId, role, name, userId, xId, discordId, characterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ID id, ID sessionId, ParticipantRole role, String name,
            ID? userId, String? xId, String? discordId, String? characterId)?
        inserting,
    required TResult orElse(),
  }) {
    if (inserting != null) {
      return inserting(
          id, sessionId, role, name, userId, xId, discordId, characterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewParticipantInserting value) inserting,
  }) {
    return inserting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewParticipantInserting value)? inserting,
  }) {
    return inserting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewParticipantInserting value)? inserting,
    required TResult orElse(),
  }) {
    if (inserting != null) {
      return inserting(this);
    }
    return orElse();
  }
}

abstract class _NewParticipantInserting implements NewParticipant {
  const factory _NewParticipantInserting(
      {required final ID id,
      required final ID sessionId,
      required final ParticipantRole role,
      required final String name,
      final ID? userId,
      final String? xId,
      final String? discordId,
      final String? characterId}) = _$NewParticipantInsertingImpl;

  @override
  ID get id;
  @override
  ID get sessionId;
  @override
  ParticipantRole get role;
  @override
  String get name;
  @override
  ID? get userId;
  @override
  String? get xId;
  @override
  String? get discordId;
  @override
  String? get characterId;

  /// Create a copy of NewParticipant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewParticipantInsertingImplCopyWith<_$NewParticipantInsertingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
