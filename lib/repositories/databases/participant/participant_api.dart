import 'package:scenarioshelf/models/participant/participant.dart';
import 'package:scenarioshelf/repositories/databases/participant/new_models/new_participant.dart';
import 'package:scenarioshelf/utils/result.dart';

abstract interface class ParticipantAPI {
  Future<Participant> create({required NewParticipant participant});
  Future<Participant> get({required String id});
  Future<List<Participant>> listBySessionId({required String sessionId});
  Future<Participant> update({required Participant participant});
  Future<Result> delete({required String id});
}
