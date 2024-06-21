// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewSession {
  ID get id => throw _privateConstructorUsedError;
  ID get scenarioId => throw _privateConstructorUsedError;
  List<NewSchedule> get schedules => throw _privateConstructorUsedError;
  List<NewParticipant> get participants => throw _privateConstructorUsedError;
  List<NewMemo> get memos => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ID id, ID scenarioId, List<NewSchedule> schedules,
            List<NewParticipant> participants, List<NewMemo> memos)
        inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ID id, ID scenarioId, List<NewSchedule> schedules,
            List<NewParticipant> participants, List<NewMemo> memos)?
        inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ID id, ID scenarioId, List<NewSchedule> schedules,
            List<NewParticipant> participants, List<NewMemo> memos)?
        inserting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewSessionInserting value) inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewSessionInserting value)? inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewSessionInserting value)? inserting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewSessionCopyWith<NewSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewSessionCopyWith<$Res> {
  factory $NewSessionCopyWith(
          NewSession value, $Res Function(NewSession) then) =
      _$NewSessionCopyWithImpl<$Res, NewSession>;
  @useResult
  $Res call(
      {ID id,
      ID scenarioId,
      List<NewSchedule> schedules,
      List<NewParticipant> participants,
      List<NewMemo> memos});
}

/// @nodoc
class _$NewSessionCopyWithImpl<$Res, $Val extends NewSession>
    implements $NewSessionCopyWith<$Res> {
  _$NewSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scenarioId = null,
    Object? schedules = null,
    Object? participants = null,
    Object? memos = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      scenarioId: null == scenarioId
          ? _value.scenarioId
          : scenarioId // ignore: cast_nullable_to_non_nullable
              as ID,
      schedules: null == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<NewSchedule>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<NewParticipant>,
      memos: null == memos
          ? _value.memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<NewMemo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewSessionInsertingImplCopyWith<$Res>
    implements $NewSessionCopyWith<$Res> {
  factory _$$NewSessionInsertingImplCopyWith(_$NewSessionInsertingImpl value,
          $Res Function(_$NewSessionInsertingImpl) then) =
      __$$NewSessionInsertingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ID id,
      ID scenarioId,
      List<NewSchedule> schedules,
      List<NewParticipant> participants,
      List<NewMemo> memos});
}

/// @nodoc
class __$$NewSessionInsertingImplCopyWithImpl<$Res>
    extends _$NewSessionCopyWithImpl<$Res, _$NewSessionInsertingImpl>
    implements _$$NewSessionInsertingImplCopyWith<$Res> {
  __$$NewSessionInsertingImplCopyWithImpl(_$NewSessionInsertingImpl _value,
      $Res Function(_$NewSessionInsertingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scenarioId = null,
    Object? schedules = null,
    Object? participants = null,
    Object? memos = null,
  }) {
    return _then(_$NewSessionInsertingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      scenarioId: null == scenarioId
          ? _value.scenarioId
          : scenarioId // ignore: cast_nullable_to_non_nullable
              as ID,
      schedules: null == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<NewSchedule>,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<NewParticipant>,
      memos: null == memos
          ? _value._memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<NewMemo>,
    ));
  }
}

/// @nodoc

class _$NewSessionInsertingImpl implements _NewSessionInserting {
  const _$NewSessionInsertingImpl(
      {required this.id,
      required this.scenarioId,
      required final List<NewSchedule> schedules,
      required final List<NewParticipant> participants,
      required final List<NewMemo> memos})
      : _schedules = schedules,
        _participants = participants,
        _memos = memos;

  @override
  final ID id;
  @override
  final ID scenarioId;
  final List<NewSchedule> _schedules;
  @override
  List<NewSchedule> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  final List<NewParticipant> _participants;
  @override
  List<NewParticipant> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<NewMemo> _memos;
  @override
  List<NewMemo> get memos {
    if (_memos is EqualUnmodifiableListView) return _memos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memos);
  }

  @override
  String toString() {
    return 'NewSession.inserting(id: $id, scenarioId: $scenarioId, schedules: $schedules, participants: $participants, memos: $memos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewSessionInsertingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scenarioId, scenarioId) ||
                other.scenarioId == scenarioId) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality().equals(other._memos, _memos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      scenarioId,
      const DeepCollectionEquality().hash(_schedules),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_memos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewSessionInsertingImplCopyWith<_$NewSessionInsertingImpl> get copyWith =>
      __$$NewSessionInsertingImplCopyWithImpl<_$NewSessionInsertingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ID id, ID scenarioId, List<NewSchedule> schedules,
            List<NewParticipant> participants, List<NewMemo> memos)
        inserting,
  }) {
    return inserting(id, scenarioId, schedules, participants, memos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ID id, ID scenarioId, List<NewSchedule> schedules,
            List<NewParticipant> participants, List<NewMemo> memos)?
        inserting,
  }) {
    return inserting?.call(id, scenarioId, schedules, participants, memos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ID id, ID scenarioId, List<NewSchedule> schedules,
            List<NewParticipant> participants, List<NewMemo> memos)?
        inserting,
    required TResult orElse(),
  }) {
    if (inserting != null) {
      return inserting(id, scenarioId, schedules, participants, memos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewSessionInserting value) inserting,
  }) {
    return inserting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewSessionInserting value)? inserting,
  }) {
    return inserting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewSessionInserting value)? inserting,
    required TResult orElse(),
  }) {
    if (inserting != null) {
      return inserting(this);
    }
    return orElse();
  }
}

abstract class _NewSessionInserting implements NewSession {
  const factory _NewSessionInserting(
      {required final ID id,
      required final ID scenarioId,
      required final List<NewSchedule> schedules,
      required final List<NewParticipant> participants,
      required final List<NewMemo> memos}) = _$NewSessionInsertingImpl;

  @override
  ID get id;
  @override
  ID get scenarioId;
  @override
  List<NewSchedule> get schedules;
  @override
  List<NewParticipant> get participants;
  @override
  List<NewMemo> get memos;
  @override
  @JsonKey(ignore: true)
  _$$NewSessionInsertingImplCopyWith<_$NewSessionInsertingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
