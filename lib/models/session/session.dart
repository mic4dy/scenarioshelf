import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/models/memo/memo.dart';
import 'package:scenarioshelf/models/participant/participant.dart';
import 'package:scenarioshelf/models/scenario/scenario.dart';
import 'package:scenarioshelf/models/schedule/schedule.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required String userId,
    required Scenario scenario,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default([]) List<Schedule> schedules,
    @Default([]) List<Participant> participants,
    @Default([]) List<Memo> memos,
  }) = _Session;
  const Session._();

  factory Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);

  String? get image => scenario.imageUrl;
}
