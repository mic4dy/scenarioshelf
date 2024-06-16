import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scenarioshelf/constants/domains/sort_order.dart';

import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/views/components/acknowledgements/status_banner.dart';
import 'package:scenarioshelf/views/pages/home/components/session_list.dart';
import 'package:scenarioshelf/views/pages/home/providers/sessions_sort/sessions_sort_pivot.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserControllerProvider);
    final pivot = useState(SessionsSortPivot.createdAt);
    final order = useState(SortOrder.desc);

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
      body: SessionList(
        userId: user.id,
        pivot: pivot.value,
        order: order.value,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(routerProvider).push(Routes.record.fullPath),
      ),
    );
  }
}
