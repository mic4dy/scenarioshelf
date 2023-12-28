// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Session {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  Scenario get scenario => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<Schedule> get schedules => throw _privateConstructorUsedError;
  List<Memo> get memos => throw _privateConstructorUsedError;
  List<Participant> get participants => throw _privateConstructorUsedError;
  Character? get playedCharacter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {String id,
      String userId,
      Scenario scenario,
      DateTime createdAt,
      DateTime updatedAt,
      List<Schedule> schedules,
      List<Memo> memos,
      List<Participant> participants,
      Character? playedCharacter});

  $ScenarioCopyWith<$Res> get scenario;
  $CharacterCopyWith<$Res>? get playedCharacter;
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? scenario = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? schedules = null,
    Object? memos = null,
    Object? participants = null,
    Object? playedCharacter = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      scenario: null == scenario
          ? _value.scenario
          : scenario // ignore: cast_nullable_to_non_nullable
              as Scenario,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedules: null == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
      memos: null == memos
          ? _value.memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
      playedCharacter: freezed == playedCharacter
          ? _value.playedCharacter
          : playedCharacter // ignore: cast_nullable_to_non_nullable
              as Character?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScenarioCopyWith<$Res> get scenario {
    return $ScenarioCopyWith<$Res>(_value.scenario, (value) {
      return _then(_value.copyWith(scenario: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res>? get playedCharacter {
    if (_value.playedCharacter == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_value.playedCharacter!, (value) {
      return _then(_value.copyWith(playedCharacter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionImplCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionImplCopyWith(
          _$SessionImpl value, $Res Function(_$SessionImpl) then) =
      __$$SessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      Scenario scenario,
      DateTime createdAt,
      DateTime updatedAt,
      List<Schedule> schedules,
      List<Memo> memos,
      List<Participant> participants,
      Character? playedCharacter});

  @override
  $ScenarioCopyWith<$Res> get scenario;
  @override
  $CharacterCopyWith<$Res>? get playedCharacter;
}

/// @nodoc
class __$$SessionImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionImpl>
    implements _$$SessionImplCopyWith<$Res> {
  __$$SessionImplCopyWithImpl(
      _$SessionImpl _value, $Res Function(_$SessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? scenario = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? schedules = null,
    Object? memos = null,
    Object? participants = null,
    Object? playedCharacter = freezed,
  }) {
    return _then(_$SessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      scenario: null == scenario
          ? _value.scenario
          : scenario // ignore: cast_nullable_to_non_nullable
              as Scenario,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedules: null == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
      memos: null == memos
          ? _value._memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
      playedCharacter: freezed == playedCharacter
          ? _value.playedCharacter
          : playedCharacter // ignore: cast_nullable_to_non_nullable
              as Character?,
    ));
  }
}

/// @nodoc

class _$SessionImpl implements _Session {
  const _$SessionImpl(
      {required this.id,
      required this.userId,
      required this.scenario,
      required this.createdAt,
      required this.updatedAt,
      final List<Schedule> schedules = const [],
      final List<Memo> memos = const [],
      final List<Participant> participants = const [],
      this.playedCharacter})
      : _schedules = schedules,
        _memos = memos,
        _participants = participants;

  @override
  final String id;
  @override
  final String userId;
  @override
  final Scenario scenario;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final List<Schedule> _schedules;
  @override
  @JsonKey()
  List<Schedule> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  final List<Memo> _memos;
  @override
  @JsonKey()
  List<Memo> get memos {
    if (_memos is EqualUnmodifiableListView) return _memos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memos);
  }

  final List<Participant> _participants;
  @override
  @JsonKey()
  List<Participant> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final Character? playedCharacter;

  @override
  String toString() {
    return 'Session(id: $id, userId: $userId, scenario: $scenario, createdAt: $createdAt, updatedAt: $updatedAt, schedules: $schedules, memos: $memos, participants: $participants, playedCharacter: $playedCharacter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.scenario, scenario) ||
                other.scenario == scenario) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules) &&
            const DeepCollectionEquality().equals(other._memos, _memos) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.playedCharacter, playedCharacter) ||
                other.playedCharacter == playedCharacter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      scenario,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_schedules),
      const DeepCollectionEquality().hash(_memos),
      const DeepCollectionEquality().hash(_participants),
      playedCharacter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      __$$SessionImplCopyWithImpl<_$SessionImpl>(this, _$identity);
}

abstract class _Session implements Session {
  const factory _Session(
      {required final String id,
      required final String userId,
      required final Scenario scenario,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final List<Schedule> schedules,
      final List<Memo> memos,
      final List<Participant> participants,
      final Character? playedCharacter}) = _$SessionImpl;

  @override
  String get id;
  @override
  String get userId;
  @override
  Scenario get scenario;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  List<Schedule> get schedules;
  @override
  List<Memo> get memos;
  @override
  List<Participant> get participants;
  @override
  Character? get playedCharacter;
  @override
  @JsonKey(ignore: true)
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
