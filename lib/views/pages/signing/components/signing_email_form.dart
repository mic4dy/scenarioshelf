import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scenarioshelf/views/pages/signing/providers/signing_controller.dart';

class SigningEmailForm extends ConsumerWidget {
  const SigningEmailForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      onChanged: (email) => ref.read(signingControllerProvider.notifier).updateEmail(email),
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 8),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: 'メールアドレス',
      ),
      style: const TextStyle(
        height: 1,
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (String? email) {
        email = email ?? '';

        final bool validEmail = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
        ).hasMatch(email);
        if (!validEmail) return '正しいメールアドレスを入力してください';

        return null;
      },
    );
  }
}
