import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/assets/gen/assets.gen.dart';
import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/router/router.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          final user = ref.read(currentUserControllerProvider);
          if (user != null) {
            ref.read(routerProvider).go(Routes.home.fullPath);
            return;
          }

          ref.read(routerProvider).go(Routes.boot.fullPath);
        });

        return;
      },
      const [],
    );

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Assets.images.logos.appLogo.image(
          width: size.width * 0.4,
        ),
      ),
    );
  }
}
