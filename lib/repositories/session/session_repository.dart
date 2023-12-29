import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/models/character/character.dart';
import 'package:scenarioshelf/models/memo/memo.dart';
import 'package:scenarioshelf/models/participant/participant.dart';
import 'package:scenarioshelf/models/scenario/scenario.dart';
import 'package:scenarioshelf/models/schedule/schedule.dart';
import 'package:scenarioshelf/models/session/session.dart';
import 'package:scenarioshelf/repositories/firebase/firestore/firestore_api.dart';

part 'session_repository.g.dart';

@riverpod
SessionRepository sessionRepository(SessionRepositoryRef ref) {
  final database = ref.read(firestoreAPIProvider).collection('sessions').withConverter(
        fromFirestore: (doc, _) => Session.fromJson(doc.data()!),
        toFirestore: (session, _) => session.toJson(),
      );
  return SessionRepository(database: database);
}

abstract interface class SessionRepositoryAPI {
  Future<String> create({
    required String userId,
    required Scenario scenario,
    List<Schedule> schedules = const [],
    List<Participant> participants = const [],
    List<Memo> memos = const [],
    Character? playedCharacter,
  });
  Future<Session> get({required String id});
  Future<List<Session>> list({required String userId});
  Future<String> update({required Session session});
  Future<String> delete({required String id});
}

class SessionRepository implements SessionRepositoryAPI {
  const SessionRepository({
    required this.database,
  });

  final CollectionReference<Session> database;

  @override
  Future<String> create({
    required String userId,
    required Scenario scenario,
    List<Schedule> schedules = const [],
    List<Participant> participants = const [],
    List<Memo> memos = const [],
    Character? playedCharacter,
  }) async {
    final doc = database.doc();
    final session = Session(
      id: doc.id,
      userId: userId,
      scenario: scenario,
      schedules: schedules,
      participants: participants,
      memos: memos,
      playedCharacter: playedCharacter,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    await doc.set(session);

    return doc.id;
  }

  @override
  Future<Session> get({required String id}) async {
    final doc = await database.doc(id).get();

    return doc.data()!;
  }

  @override
  Future<List<Session>> list({required String userId}) async {
    final query = await database.where('userId', isEqualTo: userId).get();

    return query.docs.map((doc) => doc.data()).toList();
  }

  @override
  Future<String> update({required Session session}) async {
    await database.doc(session.id).update(session.toJson());

    return session.id;
  }

  @override
  Future<String> delete({required String id}) async {
    await database.doc(id).delete();

    return id;
  }
}
