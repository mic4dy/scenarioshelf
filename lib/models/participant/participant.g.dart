// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParticipantImpl _$$ParticipantImplFromJson(Map<String, dynamic> json) =>
    _$ParticipantImpl(
      role: $enumDecode(_$ParticipantRoleEnumMap, json['role']),
      name: json['name'] as String,
      userId: json['userId'] as String?,
      xId: json['xId'] as String?,
      discordId: json['discordId'] as String?,
      character: json['character'] == null
          ? null
          : Character.fromJson(json['character'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ParticipantImplToJson(_$ParticipantImpl instance) =>
    <String, dynamic>{
      'role': _$ParticipantRoleEnumMap[instance.role]!,
      'name': instance.name,
      'userId': instance.userId,
      'xId': instance.xId,
      'discordId': instance.discordId,
      'character': instance.character,
    };

const _$ParticipantRoleEnumMap = {
  ParticipantRole.gameMaster: 'gm',
  ParticipantRole.subGameMaster: 'sgm',
  ParticipantRole.player: 'player',
  ParticipantRole.spectator: 'spectator',
};
