import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/assets/gen/assets.gen.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/widget_brightness.dart';
import 'package:scenarioshelf/providers/current_user/current_user_provider.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/utils/exceptions/signing_exception.dart';
import 'package:scenarioshelf/views/components/acknowledgements/status_banner.dart';
import 'package:scenarioshelf/views/components/buttons/labeled_button.dart';

class BootPage extends ConsumerWidget {
  const BootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    ref.listen(currentUserProvider, (previous, next) {
      ScaffoldMessenger.of(context).clearMaterialBanners();

      if (next is AsyncError) {
        final Object? error = next.error;
        final String message = error is SigningException ? error.indicate() : '原因不明のエラーが発生しました';

        ScaffoldMessenger.of(context).showMaterialBanner(
          StatusBanner.error(
            content: Text(message),
          ),
        );
      }
    });

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.05,
            right: size.width * 0.05,
            bottom: size.width * 0.05,
          ),
          child: Column(
            children: [
              const Spacer(),
              Assets.images.logos.appLogo.image(
                width: size.width * 0.4,
              ),
              const Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LabeledButton(
                    brightness: WidgetBrightness.dark,
                    minimumSize: Size(size.width * 0.8, 40),
                    onPressed: () => ref.read(routerProvider).push(Routes.signUp.path),
                    label: '新規登録',
                    textStyle: const TextStyle(
                      letterSpacing: MarginSize.small,
                    ),
                  ),
                  LabeledButton(
                    brightness: WidgetBrightness.light,
                    minimumSize: Size(size.width * 0.8, 40),
                    onPressed: () => ref.read(routerProvider).push(Routes.signIn.path),
                    label: 'ログイン',
                    textStyle: const TextStyle(
                      letterSpacing: MarginSize.small,
                    ),
                  ),
                  Divider(
                    color: Theme.of(context).colorScheme.primary,
                    thickness: 0.4,
                    indent: size.width * 0.05,
                    endIndent: size.width * 0.05,
                    height: 12,
                  ),
                  LabeledButton(
                    brightness: WidgetBrightness.light,
                    minimumSize: Size(size.width * 0.8, 40),
                    onPressed: () async {
                      await ref.read(currentUserProvider.notifier).signInWithGoogle();
                      ref.read(currentUserProvider).whenData((_) => ref.read(routerProvider).go(Routes.home.path));
                    },
                    label: 'Sign in with Google',
                    leading: Assets.images.logos.googleLogo.image(
                      height: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
