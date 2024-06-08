import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/repositories/databases/memo/new_models/new_memo.dart';
import 'package:scenarioshelf/repositories/databases/participant/new_models/new_participant.dart';
import 'package:scenarioshelf/repositories/databases/schedule/new_models/new_schedule.dart';
import 'package:uuid/uuid.dart';

part 'new_session.freezed.dart';

@freezed
class NewSession with _$NewSession {
  factory NewSession({
    required String scenarioId,
    List<NewSchedule> schedules = const [],
    List<NewParticipant> participants = const [],
    List<NewMemo> memos = const [],
  }) {
    return NewSession.inserting(
      id: const Uuid().v4(),
      scenarioId: scenarioId,
      schedules: schedules,
      participants: participants,
      memos: memos,
    );
  }

  const factory NewSession.inserting({
    required String id,
    required String scenarioId,
    required List<NewSchedule> schedules,
    required List<NewParticipant> participants,
    required List<NewMemo> memos,
  }) = _NewSessionInserting;
}
