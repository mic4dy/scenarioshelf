import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/repositories/session/session_repository.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/views/components/acknowledgements/status_banner.dart';
import 'package:scenarioshelf/views/pages/home/components/session_tile.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserControllerProvider);
    return Scaffold(
      body: ref.watch(currentUserControllerProvider).maybeWhen(
            data: (user) {
              if (user == null) {
                return _notSignedInBanner();
              }

              return FutureBuilder(
                future: ref.read(sessionRepositoryProvider).list(userId: user.uid),
                builder: (_, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) {
                        final session = snapshot.data![index];

                        return SessionTile(
                          session: session,
                        );
                      },
                    );
                  }

                  // TODO: Shimmer Widget
                  return const SizedBox.shrink();
                },
              );
            },
            error: (error, stackTrace) => _notSignedInBanner(),
            orElse: SizedBox.shrink,
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(routerProvider).push(Routes.record.fullPath),
      ),
    );
  }

  Widget _notSignedInBanner() {
    final context = useContext();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showMaterialBanner(
        StatusBanner.error(
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
}
