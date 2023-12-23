import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scenarioshelf/providers/current_user/current_user_provider.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/views/components/buttons/labeled_button.dart';
import 'package:scenarioshelf/views/pages/signing/components/signing_page_frame.dart';

// class SignInPage extends ConsumerWidget {
//   const SignInPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return SigningPageFrame(
//       transactionButton: LabeledButton.dark(
//         context: context,
//         onPressed: () async {
//           ref.invalidate(currentUserProvider);
//           await ref.read(currentUserProvider.notifier).signInWithEmailAndPassword(
//             email: 
//           );
//         },
//         label: label,
//       ),
//     );
//   }
// }
