import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scenarioshelf/router/app_routes.dart';

import 'package:scenarioshelf/views/pages/sessions/components/list_items/session_tile.dart';
import 'package:scenarioshelf/views/pages/sessions/components/sessions_sort_app_bar.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions/sessions_controller.dart';

class SessionsPage extends HookConsumerWidget {
  const SessionsPage({
    required this.userId,
    super.key,
  });

  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessions = ref.watch(sessionControllerProvider(userId));

    return Scaffold(
      body: Scrollbar(
        child: NestedScrollView(
          headerSliverBuilder: (context, _) => [
            SessionsSortAppBar(userId: userId),
          ],
          body: RefreshIndicator(
            onRefresh: () => ref.refresh(SessionControllerProvider(userId).future),
            child: SingleChildScrollView(
              child: SafeArea(
                top: false,
                child: sessions.when(
                  data: (data) => Column(
                    children: data.map((session) => SessionTile(session: session)).toList(),
                  ),
                  error: (error, stack) => const SizedBox.shrink(),
                  loading: () => const SizedBox.shrink(),
                ),
              ),
            ),
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
