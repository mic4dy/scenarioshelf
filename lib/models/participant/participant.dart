import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/models/character/character.dart';
import 'package:scenarioshelf/models/participant/participant_type.dart';

part 'participant.freezed.dart';

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
}
