import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'package:scenarioshelf/models/schedule/schedule.dart';

part 'new_schedule.freezed.dart';

@freezed
class NewSchedule with _$NewSchedule {
  @Assert('!playtime.isNegative', 'プレイ時間が負の値になっています')
  factory NewSchedule({
    required String sessionId,
    required DateTime beginningTime,
    required Duration playtime,
    ScheduleType type = ScheduleType.event,
  }) {
    return NewSchedule.inserting(
      id: const Uuid().v4(),
      type: type,
      sessionId: sessionId,
      beginningTime: beginningTime,
      playtime: playtime,
    );
  }

  const factory NewSchedule.inserting({
    required String id,
    required String sessionId,
    required ScheduleType type,
    required DateTime beginningTime,
    required Duration playtime,
  }) = _NewScheduleInserting;
}
