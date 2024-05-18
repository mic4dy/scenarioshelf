import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/assets/gen/assets.gen.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/widget_brightness.dart';
import 'package:scenarioshelf/utils/exceptions/app_auth_exception.dart';
import 'package:scenarioshelf/views/components/acknowledgements/status_banner.dart';
import 'package:scenarioshelf/views/components/buttons/labeled_button.dart';
import 'package:scenarioshelf/views/pages/signing/providers/signing/signing_controller.dart';

class EmailVerificationPage extends HookConsumerWidget {
  const EmailVerificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(signingControllerProvider, (previous, next) {
      if (previous is! AsyncError && next is AsyncError) {
        ScaffoldMessenger.of(context).clearMaterialBanners();

        final Object? error = next.error;
        final String message = error is AppAuthException ? error.indicate() : '原因不明のエラーが発生しました';

        ScaffoldMessenger.of(context).showMaterialBanner(
          StatusBanner.error(content: Text(message)),
        );

        ref.read(signingControllerProvider.notifier).resolve();
      }
    });

    final size = MediaQuery.of(context).size;

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
              Flexible(
                child: Center(
                  child: Assets.svgs.mail.svg(
                    width: size.width * 0.3,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '認証メールを送信しました',
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: MarginSize.large),
                    Text(
                      'メール内のリンクへアクセスして\n登録を完了してください',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    LabeledButton(
                      brightness: WidgetBrightness.light,
                      minimumSize: Size(size.width * 0.8, 40),
                      onPressed: () async {
                        await ref.read(signingControllerProvider.notifier).resendConfirmEmail();

                        if (context.mounted) {
                          ScaffoldMessenger.of(context).clearMaterialBanners();
                          ScaffoldMessenger.of(context).showMaterialBanner(
                            StatusBanner.success(content: const Text('認証メールを再送しました')),
                          );
                        }
                      },
                      label: '再送',
                      textStyle: const TextStyle(
                        letterSpacing: MarginSize.small,
                      ),
                    ),
                    LabeledButton(
                      brightness: WidgetBrightness.light,
                      minimumSize: Size(size.width * 0.8, 40),
                      onPressed: () async {
                        // TODO(micady): DB上に登録されているデータを削除した上でsignUpに遷移する
                      },
                      label: '別のアドレスを登録',
                      textStyle: const TextStyle(
                        letterSpacing: MarginSize.small,
                      ),
                    ),
                    LabeledButton(
                      brightness: WidgetBrightness.dark,
                      minimumSize: Size(size.width * 0.8, 40),
                      onPressed: () async {
                        ScaffoldMessenger.of(context).clearMaterialBanners();
                        await ref.read(signingControllerProvider.notifier).signInWithEmailAndPassword();
                      },
                      label: '完了',
                      textStyle: const TextStyle(
                        letterSpacing: MarginSize.small,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
