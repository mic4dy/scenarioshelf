import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/widget_brightness.dart';
import 'package:scenarioshelf/providers/current_user/current_user_provider.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/views/components/buttons/labeled_button.dart';
import 'package:scenarioshelf/views/pages/signing/components/signing_page_frame.dart';
import 'package:scenarioshelf/views/pages/signing/providers/signing_controller.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final formKey = useState<GlobalKey<FormState>>(GlobalKey<FormState>());

    return SigningPageFrame(
      formKey: formKey.value,
      transactionButton: LabeledButton(
        brightness: WidgetBrightness.dark,
        minimumSize: Size(size.width * 0.8 - 80, 40),
        onPressed: () async {
          ref.invalidate(currentUserProvider);
          await ref.read(currentUserProvider.notifier).signInWithEmailAndPassword(
                email: ref.read(signingControllerProvider).email,
                password: ref.read(signingControllerProvider).password,
              );

          ref.watch(currentUserProvider).whenData((_) => ref.read(routerProvider).go(Routes.home.path));
        },
        label: 'ログイン',
        textStyle: const TextStyle(
          letterSpacing: MarginSize.small,
        ),
      ),
    );
  }
}
