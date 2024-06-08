// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Participant _$ParticipantFromJson(Map<String, dynamic> json) => Participant(
      id: json['id'] as String,
      role: $enumDecode(_$ParticipantRoleEnumMap, json['participant_role']),
      name: json['name'] as String,
      userId: json['user_id'] as String?,
      xId: json['x_id'] as String?,
      discordId: json['discord_id'] as String?,
      character: json['character'] == null
          ? null
          : Character.fromJson(json['character'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParticipantToJson(Participant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'participant_role': _$ParticipantRoleEnumMap[instance.role]!,
      'name': instance.name,
      'user_id': instance.userId,
      'x_id': instance.xId,
      'discord_id': instance.discordId,
      'character': instance.character,
    };

const _$ParticipantRoleEnumMap = {
  ParticipantRole.gameMaster: 'gm',
  ParticipantRole.subGameMaster: 'sgm',
  ParticipantRole.player: 'player',
  ParticipantRole.spectator: 'spectator',
};

_$ParticipantImpl _$$ParticipantImplFromJson(Map<String, dynamic> json) =>
    _$ParticipantImpl(
      id: json['id'] as String,
      role: $enumDecode(_$ParticipantRoleEnumMap, json['participant_role']),
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
      'id': instance.id,
      'participant_role': _$ParticipantRoleEnumMap[instance.role]!,
      'name': instance.name,
      'userId': instance.userId,
      'xId': instance.xId,
      'discordId': instance.discordId,
      'character': instance.character,
    };
