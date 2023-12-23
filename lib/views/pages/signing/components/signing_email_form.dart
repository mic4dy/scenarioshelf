import 'package:flutter/material.dart';

class SigningEmailForm extends StatelessWidget {
  const SigningEmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
