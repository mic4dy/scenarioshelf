import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';
part 'schedule_type.dart';

@freezed
class Schedule with _$Schedule {
  @Assert('!playtime.isNegative', 'プレイ時間が負の値になっています')
  const factory Schedule({
    required DateTime beginningTime,
    required Duration playtime,
    @Default(ScheduleType.event) ScheduleType type,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);
}
