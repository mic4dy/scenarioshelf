import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/widget_brightness.dart';
import 'package:scenarioshelf/views/components/buttons/labeled_button.dart';

class SetupUserPage extends HookConsumerWidget {
  const SetupUserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                Expanded(
                  child: Center(),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: MarginSize.large),
                      const Spacer(),
                      SizedBox(
                        height: 40,
                        child: LabeledButton(
                          brightness: WidgetBrightness.dark,
                          minimumSize: Size(size.width * 0.8, 40),
                          onPressed: () async {},
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
