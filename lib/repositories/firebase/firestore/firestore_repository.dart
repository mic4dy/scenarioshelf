import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_repository.g.dart';

@Riverpod(keepAlive: true)
class FirestoreRepositoryAPI extends _$FirestoreRepositoryAPI {
  @override
  FirebaseFirestore build() => FirebaseFirestore.instance;
}
