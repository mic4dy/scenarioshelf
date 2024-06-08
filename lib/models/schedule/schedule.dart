import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';
part 'schedule_type.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class Schedule with _$Schedule {
  @Assert('!playtime.isNegative', 'プレイ時間が負の値になっています')
  factory Schedule({
    required String id,
    required DateTime beginningTime,
    required Duration playtime,
    @JsonKey(name: 'schedule_type') @Default(ScheduleType.event) ScheduleType type,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);
}
