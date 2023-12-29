import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/models/character/character.dart';

part 'participant.freezed.dart';
part 'participant.g.dart';
part 'participant_type.dart';

@freezed
class Participant with _$Participant {
  const factory Participant({
    required ParticipantType type,
    required String name,
    String? userId,
    String? xId,
    String? discordId,
    Character? character,
  }) = _Participant;

  factory Participant.fromJson(Map<String, dynamic> json) => _$ParticipantFromJson(json);
}
