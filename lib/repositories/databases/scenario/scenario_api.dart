import 'package:scenarioshelf/models/scenario/scenario.dart';
import 'package:scenarioshelf/repositories/databases/scenario/new_models/new_scenario.dart';
import 'package:scenarioshelf/utils/result.dart';

abstract interface class ScenarioAPI {
  Future<Scenario> create({required NewScenario scenario});
  Future<Scenario> get({required String id});
  Future<List<Scenario>> listByUserId({required String userId});
  Future<Scenario> update({required Scenario scenario});
  Future<Result> delete({required String id});
}
