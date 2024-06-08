import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/models/schedule/schedule.dart';
import 'package:scenarioshelf/repositories/databases/schedule/new_models/new_schedule.dart';
import 'package:scenarioshelf/repositories/databases/schedule/schedule_api.dart';
import 'package:scenarioshelf/utils/result.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'schedule_repository.g.dart';

@riverpod
ScheduleRepository scheduleRepository(ScheduleRepositoryRef ref) {
  return const ScheduleRepository();
}

class ScheduleRepository implements ScheduleAPI {
  const ScheduleRepository();

  static const String tableName = 'schedules';

  @override
  Future<Schedule> create({required NewSchedule schedule}) async {
    final client = Supabase.instance.client;
    final response = await client.from(tableName).insert({
      'id': schedule.id,
      'session_id': schedule.sessionId,
      'schedule_type': schedule.type.id,
      'beginning_time': schedule.beginningTime.toIso8601String(),
      'playtime': schedule.playtime,
    }).select();

    return Schedule.fromJson(response.first);
  }

  @override
  Future<Result> delete({required String id}) {
    // `TODO`: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Schedule> get({required String id}) {
    // `TODO`: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<Schedule>> listBySessionId({required String sessionId}) {
    // `TODO`: implement listBySessionId
    throw UnimplementedError();
  }

  @override
  Future<Schedule> update({required Schedule schedule}) {
    // `TODO`: implement update
    throw UnimplementedError();
  }
}
