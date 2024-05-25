import 'package:scenarioshelf/models/memo/memo.dart';
import 'package:scenarioshelf/models/participant/participant.dart';
import 'package:scenarioshelf/models/scenario/scenario.dart';
import 'package:scenarioshelf/models/schedule/schedule.dart';
import 'package:scenarioshelf/models/session/session.dart';

abstract interface class SessionAPI {
  Future<String> create({
    required String userId,
    required Scenario scenario,
    List<Schedule> schedules = const [],
    List<Participant> participants = const [],
    List<Memo> memos = const [],
  });
  Future<Session> get({required String id});
  Future<List<Session>> list({required String userId});
  Future<String> update({required Session session});
  Future<String> delete({required String id});
}
