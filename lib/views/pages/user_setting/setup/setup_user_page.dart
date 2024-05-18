import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scenarioshelf/utils/exceptions/user_exception.dart';
import 'package:scenarioshelf/views/components/acknowledgements/status_banner.dart';
import 'package:scenarioshelf/views/pages/user_setting/setup/components/setup_avatar.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/widget_brightness.dart';
import 'package:scenarioshelf/views/components/buttons/labeled_button.dart';
import 'package:scenarioshelf/views/pages/user_setting/providers/user_setting_controller.dart';

class SetupUserPage extends HookConsumerWidget {
  const SetupUserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(userSettingControllerProvider, (previous, next) {
      if (previous is! AsyncError && next is AsyncError) {
        ScaffoldMessenger.of(context).clearMaterialBanners();

        final Object? error = next.error;
        final String message = error is UserException ? error.indicate() : '原因不明のエラーが発生しました';

        ScaffoldMessenger.of(context).showMaterialBanner(
          StatusBanner.error(content: Text(message)),
        );

        ref.read(userSettingControllerProvider.notifier).resolve();
      }
    });

    final size = MediaQuery.of(context).size;
    final formKey = useState<GlobalKey<FormState>>(GlobalKey<FormState>());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.1,
          ),
          child: Form(
            key: formKey.value,
            child: Column(
              children: [
                const Expanded(child: SetupAvatar()),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: MarginSize.large),
                      TextFormField(
                        onChanged: (name) => ref.read(userSettingControllerProvider.notifier).updateName(name),
                        decoration: const InputDecoration(
                          constraints: BoxConstraints(
                            minHeight: BoxConstraintsSize.form,
                          ),
                          contentPadding: EdgeInsets.zero,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'ユーザ名',
                        ),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          height: 1.2,
                        ),
                        keyboardType: TextInputType.name,
                        validator: (String? name) {
                          name = name ?? '';

                          final bool validEmail = RegExp(
                            r'^[0-9a-zA-Zぁ-んァ-ヶ一-龠々ー]+$',
                          ).hasMatch(name);
                          if (!validEmail) return '半角英数字と日本語のみのユーザ名を設定してください';

                          ref.read(userSettingControllerProvider.notifier).updateName(name);

                          return null;
                        },
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 40,
                        child: LabeledButton(
                          brightness: WidgetBrightness.dark,
                          minimumSize: Size(size.width * 0.8, 40),
                          onPressed: () async {
                            if (!formKey.value.currentState!.validate()) return;
                          },
                          label: '登録',
                          textStyle: const TextStyle(
                            letterSpacing: MarginSize.small,
                          ),
                        ),
                      ),
                      const SizedBox(height: MarginSize.doubleLarge),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
