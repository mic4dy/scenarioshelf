import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/views/pages/signing/providers/states/signing_state.dart';

part 'signing_controller.g.dart';

@riverpod
class SigningController extends _$SigningController {
  @override
  SigningState build() {
    return const SigningState();
  }

  void updateEmail(String email) {
    state = state.copyWith(email: email);
  }

  void updatePassword(String password) {
    state = state.copyWith(password: password);
  }
}
