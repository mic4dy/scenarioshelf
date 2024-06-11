import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/models/memo/memo.dart';
import 'package:scenarioshelf/models/participant/participant.dart';
import 'package:scenarioshelf/models/scenario/scenario.dart';
import 'package:scenarioshelf/models/schedule/schedule.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Session({
    required String id,
    required Scenario scenario,
    required String createdBy,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default([]) List<Schedule> schedules,
    @Default([]) List<Participant> participants,
    @Default([]) List<Memo> memos,
  }) = _Session;
  const Session._();

  factory Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);

  String? get keyVisualUrl => scenario.keyVisualUrl;
  String? get myRole {
    final myParticipant = participants.firstWhereOrNull(
      (participant) => participant.userId == createdBy,
    );

    if (myParticipant == null) {
      return null;
    }

    if (myParticipant.role != ParticipantRole.player) {
      return myParticipant.role.label;
    }

    return myParticipant.character?.name ?? myParticipant.role.label;
  }
}
