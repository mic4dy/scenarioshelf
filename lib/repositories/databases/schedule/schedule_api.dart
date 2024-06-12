import 'package:scenarioshelf/models/schedule/schedule.dart';
import 'package:scenarioshelf/repositories/databases/schedule/new_models/new_schedule.dart';
import 'package:scenarioshelf/utils/result.dart';

abstract interface class ScheduleAPI {
  Future<Schedule> create({required NewSchedule schedule});
  Future<Schedule> get({required String id});
  Future<List<Schedule>> listBySessionId({required String sessionId});
  Future<Schedule> update({required Schedule schedule});
  Future<Result> delete({required String id});
}
