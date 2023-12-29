part of 'participant.dart';

@JsonEnum(valueField: 'id')
enum ParticipantType {
  gameMaster(id: 'gameMaster', label: 'ゲームマスター'),
  subGameMaster(id: 'subGameMaster', label: 'サブゲームマスター'),
  player(id: 'player', label: 'プレイヤー'),
  spectator(id: 'spectator', label: '観戦者');

  const ParticipantType({
    required this.id,
    required this.label,
  });

  final String id;
  final String label;
}
