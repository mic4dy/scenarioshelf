// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleImpl _$$ScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleImpl(
      id: json['id'] as String,
      beginningTime: DateTime.parse(json['beginning_time'] as String),
      playtime: Duration(microseconds: (json['playtime'] as num).toInt()),
      type: $enumDecodeNullable(_$ScheduleTypeEnumMap, json['schedule_type']) ??
          ScheduleType.event,
    );

Map<String, dynamic> _$$ScheduleImplToJson(_$ScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beginning_time': instance.beginningTime.toIso8601String(),
      'playtime': instance.playtime.inMicroseconds,
      'schedule_type': _$ScheduleTypeEnumMap[instance.type]!,
    };

const _$ScheduleTypeEnumMap = {
  ScheduleType.adjustment: 'adjustment',
  ScheduleType.event: 'event',
  ScheduleType.available: 'available',
};
