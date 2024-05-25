import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/models/memo/memo.dart';
import 'package:scenarioshelf/models/participant/participant.dart';
import 'package:scenarioshelf/models/scenario/scenario.dart';
import 'package:scenarioshelf/models/schedule/schedule.dart';
import 'package:scenarioshelf/models/session/session.dart';
import 'package:scenarioshelf/repositories/apis/session_api.dart';
import 'package:scenarioshelf/repositories/firebase/firestore/firestore_repository.dart';

part 'session_repository.g.dart';

@riverpod
SessionRepository sessionRepository(SessionRepositoryRef ref) {
  final database = ref.read(firestoreRepositoryAPIProvider).collection('sessions').withConverter(
        fromFirestore: (doc, _) => Session.fromJson(doc.data()!),
        toFirestore: (session, _) => session.toJson(),
      );
  return SessionRepository(database: database);
}

class SessionRepository implements SessionAPI {
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
  }) async {
    final doc = database.doc();
    final session = Session(
      id: doc.id,
      userId: userId,
      scenario: scenario,
      schedules: schedules,
      participants: participants,
      memos: memos,
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
  Future<List<Session>> list({
    required String userId,
  }) async {
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
