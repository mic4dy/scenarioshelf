import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';
part 'schedule_type.dart';

@freezed
class Schedule with _$Schedule {
  @JsonSerializable(fieldRename: FieldRename.snake)
  @Assert('!playtime.isNegative', 'プレイ時間が負の値になっています')
  factory Schedule({
    required String id,
    required DateTime beginningTime,
    required Duration playtime,
    @JsonKey(name: 'schedule_type') @Default(ScheduleType.event) ScheduleType type,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);
}
