import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/router/app_routes.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/views/pages/sessions/components/list_items/session_tile.dart';
import 'package:scenarioshelf/views/pages/sessions/components/list_items/session_tile_shimmer.dart';
import 'package:scenarioshelf/views/pages/sessions/components/sessions_sort_app_bar.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions/sessions_controller.dart';

class SessionsPage extends HookConsumerWidget {
  const SessionsPage({
    required this.userId,
    super.key,
  });

  final ID userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessions = ref.watch(sessionControllerProvider(userId));

    return Scaffold(
      body: Scrollbar(
        child: RefreshIndicator(
          displacement: 24,
          edgeOffset: 64,
          onRefresh: () => ref.refresh(SessionControllerProvider(userId).future),
          child: CustomScrollView(
            slivers: [
              SessionsSortAppBar(userId: userId),
              SliverSafeArea(
                top: false,
                sliver: sessions.when(
                  data: (data) => SliverList(
                    delegate: SliverChildListDelegate(data.map((session) => SessionTile(session: session)).toList()),
                  ),
                  error: (error, stack) => const SliverToBoxAdapter(
                    child: SizedBox.shrink(),
                  ),
                  loading: () => SliverList(
                    delegate: SliverChildListDelegate(List.generate(15, (_) => const SessionTileShimmer())),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async => const RecordRoute().push(context),
      ),
    );
  }
}
