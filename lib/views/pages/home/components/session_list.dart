import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scenarioshelf/constants/domains/sort_order.dart';
import 'package:scenarioshelf/views/pages/home/components/session_tile.dart';
import 'package:scenarioshelf/views/pages/home/providers/sessions/sessions_controller.dart';
import 'package:scenarioshelf/views/pages/home/providers/sessions_sort/sessions_sort_pivot.dart';

class SessionList extends HookConsumerWidget {
  const SessionList({
    required this.userId,
    required this.pivot,
    required this.order,
    super.key,
  });

  final String userId;
  final SessionsSortPivot pivot;
  final SortOrder order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessions = ref.watch(sessionControllerProvider(userId, pivot, order));

    return RefreshIndicator(
      onRefresh: () => ref.refresh(SessionControllerProvider(userId, pivot, order).future),
      child: sessions.when(
        data: (sessions) => ListView.builder(
          itemCount: sessions.length,
          itemBuilder: (_, index) {
            final session = sessions[index];

            return SessionTile(
              session: session,
            );
          },
        ),
        // `TODO`(micady): Shimmer Widget
        error: (error, stack) => const SizedBox.shrink(),
        loading: () => const SizedBox.shrink(),
      ),
    );
  }
}
