part of 'schedule.dart';

@JsonEnum(valueField: 'id')
enum ScheduleType {
  adjustment(id: 'adjustment', label: '候補日'),
  event(id: 'event', label: '実施日'),
  available(id: 'available', label: '予備日');

  const ScheduleType({
    required this.id,
    required this.label,
  });

  factory ScheduleType.fromId(String id) {
    return ScheduleType.values.firstWhere(
      (type) => type.id == id,
      orElse: () => ScheduleType.event,
    );
  }

  final String id;
  final String label;
}
