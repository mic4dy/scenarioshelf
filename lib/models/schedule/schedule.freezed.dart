// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  ID get id => throw _privateConstructorUsedError;
  DateTime get beginningTime => throw _privateConstructorUsedError;
  @DurationIntervalConverter()
  Duration get playtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_type')
  ScheduleType get type => throw _privateConstructorUsedError;

  /// Serializes this Schedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res, Schedule>;
  @useResult
  $Res call(
      {ID id,
      DateTime beginningTime,
      @DurationIntervalConverter() Duration playtime,
      @JsonKey(name: 'schedule_type') ScheduleType type});
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res, $Val extends Schedule>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? beginningTime = null,
    Object? playtime = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      beginningTime: null == beginningTime
          ? _value.beginningTime
          : beginningTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      playtime: null == playtime
          ? _value.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as Duration,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ScheduleType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleImplCopyWith<$Res>
    implements $ScheduleCopyWith<$Res> {
  factory _$$ScheduleImplCopyWith(
          _$ScheduleImpl value, $Res Function(_$ScheduleImpl) then) =
      __$$ScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ID id,
      DateTime beginningTime,
      @DurationIntervalConverter() Duration playtime,
      @JsonKey(name: 'schedule_type') ScheduleType type});
}

/// @nodoc
class __$$ScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$ScheduleImpl>
    implements _$$ScheduleImplCopyWith<$Res> {
  __$$ScheduleImplCopyWithImpl(
      _$ScheduleImpl _value, $Res Function(_$ScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? beginningTime = null,
    Object? playtime = null,
    Object? type = null,
  }) {
    return _then(_$ScheduleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      beginningTime: null == beginningTime
          ? _value.beginningTime
          : beginningTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      playtime: null == playtime
          ? _value.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as Duration,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ScheduleType,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ScheduleImpl implements _Schedule {
  _$ScheduleImpl(
      {required this.id,
      required this.beginningTime,
      @DurationIntervalConverter() required this.playtime,
      @JsonKey(name: 'schedule_type') this.type = ScheduleType.event})
      : assert(!playtime.isNegative, 'プレイ時間が負の値になっています');

  factory _$ScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleImplFromJson(json);

  @override
  final ID id;
  @override
  final DateTime beginningTime;
  @override
  @DurationIntervalConverter()
  final Duration playtime;
  @override
  @JsonKey(name: 'schedule_type')
  final ScheduleType type;

  @override
  String toString() {
    return 'Schedule(id: $id, beginningTime: $beginningTime, playtime: $playtime, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.beginningTime, beginningTime) ||
                other.beginningTime == beginningTime) &&
            (identical(other.playtime, playtime) ||
                other.playtime == playtime) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, beginningTime, playtime, type);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      __$$ScheduleImplCopyWithImpl<_$ScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleImplToJson(
      this,
    );
  }
}

abstract class _Schedule implements Schedule {
  factory _Schedule(
          {required final ID id,
          required final DateTime beginningTime,
          @DurationIntervalConverter() required final Duration playtime,
          @JsonKey(name: 'schedule_type') final ScheduleType type}) =
      _$ScheduleImpl;

  factory _Schedule.fromJson(Map<String, dynamic> json) =
      _$ScheduleImpl.fromJson;

  @override
  ID get id;
  @override
  DateTime get beginningTime;
  @override
  @DurationIntervalConverter()
  Duration get playtime;
  @override
  @JsonKey(name: 'schedule_type')
  ScheduleType get type;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
