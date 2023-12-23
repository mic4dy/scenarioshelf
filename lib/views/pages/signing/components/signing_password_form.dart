import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';

class SigningPasswordForm extends HookWidget {
  const SigningPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final isObscure = useState<bool>(false);

    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: 'パスワード',
        suffixIcon: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () => isObscure.value = !isObscure.value,
          icon: Icon(isObscure.value ? Icons.visibility_off_outlined : Icons.visibility_outlined),
          iconSize: IconSize.signingForm,
          splashRadius: IconSize.signingForm,
        ),
      ),
      style: const TextStyle(
        height: 1,
      ),
      keyboardType: TextInputType.visiblePassword,
      obscureText: isObscure.value,
      validator: (String? password) {
        password = password ?? '';

        if (password.length < 8) return '8文字以上のパスワードを設定してください';

        final bool validPassword = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+",
        ).hasMatch(password);
        if (!validPassword) return '英数字記号も用いたパスワードを設定してください';

        return null;
      },
    );
  }
}
