import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/models/session/session.dart';
import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/repositories/databases/session/session_repository.dart';
import 'package:scenarioshelf/views/pages/home/providers/sessions_sort/sessions_sort_controller.dart';

part 'sessions_controller.g.dart';

@riverpod
Future<List<Session>> sessionController(SessionControllerRef ref) async {
  final user = ref.watch(currentUserControllerProvider);

  if (user == null) {
    return [];
  }

  final sortProvider = ref.watch(sessionsSortControllerProvider);
  final sessions = await ref.read(sessionRepositoryProvider).listByUserId(
        userId: user.id,
        pivot: sortProvider.pivot,
        order: sortProvider.order,
      );

  return sessions;
}
