part of 'participant.dart';

@JsonEnum(valueField: 'id')
enum ParticipantRole {
  gameMaster(id: 'gm', label: 'ゲームマスター'),
  subGameMaster(id: 'sgm', label: 'サブゲームマスター'),
  player(id: 'player', label: 'プレイヤー'),
  spectator(id: 'spectator', label: '観戦者');

  const ParticipantRole({
    required this.id,
    required this.label,
  });

  final String id;
  final String label;
}
