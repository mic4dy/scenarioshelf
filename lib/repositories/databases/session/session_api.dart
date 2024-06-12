import 'package:scenarioshelf/models/session/session.dart';
import 'package:scenarioshelf/repositories/databases/session/new_models/new_session.dart';
import 'package:scenarioshelf/utils/result.dart';

abstract interface class SessionAPI {
  Future<Session> create({required NewSession session});
  Future<Session> get({required String id});
  Future<List<Session>> listByUserId({required String userId});
  Future<Session> update({required Session session});
  Future<Result> delete({required String id});
}
