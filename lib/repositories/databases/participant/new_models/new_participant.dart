import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'package:scenarioshelf/models/participant/participant.dart';

part 'new_participant.freezed.dart';

@freezed
class NewParticipant with _$NewParticipant {
  factory NewParticipant({
    required String sessionId,
    required ParticipantRole role,
    required String name,
    String? userId,
    String? xId,
    String? discordId,
    String? characterId,
  }) {
    return NewParticipant.inserting(
      id: const Uuid().v4(),
      sessionId: sessionId,
      role: role,
      name: name,
      userId: userId,
      xId: xId,
      discordId: discordId,
      characterId: characterId,
    );
  }

  const factory NewParticipant.inserting({
    required String id,
    required String sessionId,
    required ParticipantRole role,
    required String name,
    String? userId,
    String? xId,
    String? discordId,
    String? characterId,
  }) = _NewParticipantInserting;
}
