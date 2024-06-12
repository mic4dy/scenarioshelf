import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scenarioshelf/utils/converters/json_serializes/duration_interval_converter.dart';

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
    @DurationIntervalConverter() required Duration playtime,
    @JsonKey(name: 'schedule_type') @Default(ScheduleType.event) ScheduleType type,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);
}
