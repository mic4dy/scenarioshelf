import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

import 'package:scenarioshelf/constants/assets/gen/assets.gen.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/widget_brightness.dart';
import 'package:scenarioshelf/models/user/user.dart';
import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/views/components/buttons/labeled_button.dart';

class EmailVerificationPage extends HookConsumerWidget {
  const EmailVerificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    useEffect(() {
      final authStateSubscription = Supabase.instance.client.auth.onAuthStateChange.listen((data) {
        final session = data.session;
        if (session != null) {
          ref.read(currentUserControllerProvider.notifier).update(User.fromSupabase(session.user));
          ref.read(routerProvider).go(Routes.home.path);
        }
      });

      return authStateSubscription.cancel;
    });

    return Scaffold(
      body: SafeArea(
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
                    onPressed: () async {},
                    label: '再送',
                    textStyle: const TextStyle(
                      letterSpacing: MarginSize.small,
                    ),
                  ),
                  LabeledButton(
                    brightness: WidgetBrightness.light,
                    minimumSize: Size(size.width * 0.8, 40),
                    onPressed: () async {},
                    label: '別のアドレスを登録',
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
    );
  }
}
