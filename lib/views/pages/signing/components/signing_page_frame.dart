import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/assets/gen/assets.gen.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/providers/current_user/current_user_provider.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/utils/exceptions/signing_exception.dart';
import 'package:scenarioshelf/views/components/acknowledgements/status_banner.dart';
import 'package:scenarioshelf/views/pages/signing/components/signing_email_form.dart';
import 'package:scenarioshelf/views/pages/signing/components/signing_password_form.dart';

class SigningPageFrame extends ConsumerWidget {
  const SigningPageFrame({
    required this.formKey,
    required this.transactionButton,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final Widget transactionButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(currentUserProvider, (previous, next) {
      ScaffoldMessenger.of(context).clearMaterialBanners();

      if (previous is AsyncData && next is AsyncLoading) {
        ScaffoldMessenger.of(context).showMaterialBanner(
          StatusBanner.loading(content: const Text('ユーザを登録中です')),
        );
      }

      if (previous is AsyncLoading && next is AsyncError) {
        final Object? error = next.error;
        final String message = error is SigningException ? error.indicate() : '原因不明のエラーが発生しました';

        ScaffoldMessenger.of(context).showMaterialBanner(
          StatusBanner.error(content: Text(message)),
        );
      }
    });

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.1,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Spacer(flex: 2),
                Assets.images.logos.appLogo.image(
                  width: size.width * 0.4,
                ),
                const Spacer(flex: 2),
                const SigningEmailForm(),
                const SizedBox(height: MarginSize.large),
                const SigningPasswordForm(),
                const Spacer(flex: 2),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox.square(
                        dimension: 40,
                        child: OutlinedButton(
                          onPressed: () => ref.read(routerProvider).pop(),
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(
                              side: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 0.5,
                              ),
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_back_sharp,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                      transactionButton,
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
