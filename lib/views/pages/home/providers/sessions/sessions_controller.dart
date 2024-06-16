import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/constants/domains/sort_order.dart';

import 'package:scenarioshelf/models/session/session.dart';
import 'package:scenarioshelf/repositories/databases/session/session_repository.dart';
import 'package:scenarioshelf/views/pages/home/providers/sessions_sort/sessions_sort_pivot.dart';

part 'sessions_controller.g.dart';

@riverpod
Future<List<Session>> sessionController(
  SessionControllerRef ref,
  String userId,
  SessionsSortPivot pivot,
  SortOrder order,
) =>
    ref.read(sessionRepositoryProvider).listByUserId(
          userId: userId,
          pivot: pivot,
          order: order,
        );
