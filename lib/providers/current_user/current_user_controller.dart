import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/repositories/firebase/auth/auth_repository.dart';

part 'current_user_controller.g.dart';

@Riverpod(keepAlive: true)
class CurrentUserController extends _$CurrentUserController {
  @override
  User? build() {
    return ref.read(authRepositoryProvider).getCurrentUser();
  }

  // ignore: use_setters_to_change_properties
  void update(User user) {
    state = user;
  }
}
