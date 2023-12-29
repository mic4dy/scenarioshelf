// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleImpl _$$ScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleImpl(
      beginningTime: DateTime.parse(json['beginningTime'] as String),
      playtime: Duration(microseconds: json['playtime'] as int),
      type: $enumDecodeNullable(_$ScheduleTypeEnumMap, json['type']) ??
          ScheduleType.event,
    );

Map<String, dynamic> _$$ScheduleImplToJson(_$ScheduleImpl instance) =>
    <String, dynamic>{
      'beginningTime': instance.beginningTime.toIso8601String(),
      'playtime': instance.playtime.inMicroseconds,
      'type': _$ScheduleTypeEnumMap[instance.type]!,
    };

const _$ScheduleTypeEnumMap = {
  ScheduleType.adjustment: 'adjustment',
  ScheduleType.event: 'event',
  ScheduleType.available: 'available',
};
