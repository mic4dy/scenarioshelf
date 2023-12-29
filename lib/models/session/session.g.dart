// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    _$SessionImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      scenario: Scenario.fromJson(json['scenario'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      schedules: (json['schedules'] as List<dynamic>?)
              ?.map((e) => Schedule.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      participants: (json['participants'] as List<dynamic>?)
              ?.map((e) => Participant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      memos: (json['memos'] as List<dynamic>?)
              ?.map((e) => Memo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      playedCharacter: json['playedCharacter'] == null
          ? null
          : Character.fromJson(json['playedCharacter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'scenario': instance.scenario,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'schedules': instance.schedules,
      'participants': instance.participants,
      'memos': instance.memos,
      'playedCharacter': instance.playedCharacter,
    };
