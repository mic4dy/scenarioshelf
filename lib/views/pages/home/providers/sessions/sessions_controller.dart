import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/constants/domains/sort_order.dart';
import 'package:scenarioshelf/models/participant/participant.dart';
import 'package:scenarioshelf/models/schedule/schedule.dart';
import 'package:scenarioshelf/models/session/session.dart';
import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/repositories/databases/session/session_repository.dart';
import 'package:scenarioshelf/views/pages/home/providers/sessions_sort/sessions_sort_controller.dart';
import 'package:scenarioshelf/views/pages/home/providers/sessions_sort/sessions_sort_pivot.dart';

part 'sessions_controller.g.dart';

@riverpod
FutureOr<List<Session>> sessionController(SessionControllerRef ref) async {
  final user = ref.read(currentUserControllerProvider);

  if (user == null) {
    return [];
  }

  final sortProvider = ref.read(sessionsSortControllerProvider);
  final sessions = await ref.read(sessionRepositoryProvider).listByUserId(userId: user.id);

  switch (sortProvider.pivot) {
    case SessionsSortPivot.scenarioName:
      return sessions
        ..sort((a, b) {
          if (a.scenario.kana != null && b.scenario.kana != null) {
            switch (sortProvider.order) {
              case SortOrder.asc:
                return a.scenario.kana!.compareTo(b.scenario.kana!);
              case SortOrder.desc:
                return b.scenario.kana!.compareTo(a.scenario.kana!);
            }
          }

          return switch (sortProvider.order) {
            SortOrder.asc => a.scenario.title.compareTo(b.scenario.title),
            SortOrder.desc => b.scenario.title.compareTo(a.scenario.title),
          };
        });
    case SessionsSortPivot.scenarioSystem:
      return sessions
        ..sort(
          (a, b) => switch (sortProvider.order) {
            SortOrder.asc => a.scenario.system.id.compareTo(b.scenario.system.id),
            SortOrder.desc => b.scenario.system.id.compareTo(a.scenario.system.id),
          },
        );
    case SessionsSortPivot.scenarioAuthor:
      return sessions
        ..sort((a, b) {
          if (a.scenario.author == null && b.scenario.author == null) {
            return 0;
          }
          if (a.scenario.author == null) {
            return 1;
          }
          if (b.scenario.author == null) {
            return -1;
          }

          return switch (sortProvider.order) {
            SortOrder.asc => a.scenario.author!.compareTo(b.scenario.author!),
            SortOrder.desc => b.scenario.author!.compareTo(a.scenario.author!),
          };
        });
    case SessionsSortPivot.schedule:
      return sessions
        ..sort((a, b) {
          final aSchedule = a.schedules.where((schedule) => schedule.type == ScheduleType.event).toList();
          final bSchedule = b.schedules.where((schedule) => schedule.type == ScheduleType.event).toList();
          if (aSchedule.isEmpty && bSchedule.isEmpty) {
            return 0;
          }
          if (aSchedule.isEmpty) {
            return 1;
          }
          if (bSchedule.isEmpty) {
            return -1;
          }

          final aOldestSchedule = (aSchedule..sort((a, b) => a.beginningTime.compareTo(b.beginningTime))).last;
          final bOldestSchedule = (bSchedule..sort((a, b) => a.beginningTime.compareTo(b.beginningTime))).last;

          return switch (sortProvider.order) {
            SortOrder.asc => aOldestSchedule.beginningTime.compareTo(bOldestSchedule.beginningTime),
            SortOrder.desc => bOldestSchedule.beginningTime.compareTo(aOldestSchedule.beginningTime),
          };
        });
    case SessionsSortPivot.characterName:
      return sessions
        ..sort((a, b) {
          final aCharacter = a.participants
              .firstWhereOrNull((participant) => participant.role == ParticipantRole.player && participant.userId == user.id)
              ?.character;
          final bCharacter = b.participants
              .firstWhereOrNull((participant) => participant.role == ParticipantRole.player && participant.userId == user.id)
              ?.character;
          if (aCharacter == null && bCharacter == null) {
            return 0;
          }
          if (aCharacter == null) {
            return 1;
          }
          if (bCharacter == null) {
            return -1;
          }

          return switch (sortProvider.order) {
            SortOrder.asc => aCharacter.name.compareTo(bCharacter.name),
            SortOrder.desc => bCharacter.name.compareTo(aCharacter.name),
          };
        });
    case SessionsSortPivot.createdAt:
      return sessions
        ..sort((a, b) {
          return switch (sortProvider.order) {
            SortOrder.asc => a.createdAt.compareTo(b.createdAt),
            SortOrder.desc => b.createdAt.compareTo(a.createdAt),
          };
        });
  }
}
