import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/views/components/acknowledgements/status_banner.dart';
import 'package:scenarioshelf/views/pages/home/components/session_tile.dart';
import 'package:scenarioshelf/views/pages/home/providers/sessions/sessions_controller.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserControllerProvider);

    if (user == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showMaterialBanner(
          StatusBanner.error(
            context: context,
            content: const Text('ログインしてください'),
            actions: [
              Consumer(
                builder: (context, ref, _) {
                  return TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                      ref.read(routerProvider).replace<void>(Routes.boot.fullPath);
                    },
                    child: const Text('ログイン'),
                  );
                },
              ),
            ],
          ),
        );
      });

      return const SizedBox.shrink();
    }

    return Scaffold(
      // body: const SizedBox.shrink(),
      body: ref.watch(sessionControllerProvider).when(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(routerProvider).push(Routes.record.fullPath),
      ),
    );
  }
}
