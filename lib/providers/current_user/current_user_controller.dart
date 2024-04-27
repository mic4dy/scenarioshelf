import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/repositories/firebase/auth/auth_repository.dart';
import 'package:scenarioshelf/utils/logger.dart';

part 'current_user_controller.g.dart';

@Riverpod(keepAlive: true)
class CurrentUserController extends _$CurrentUserController {
  @override
  User? build() {
    final user = ref.read(authRepositoryProvider).getCurrentUser();
    if (user != null) {
      logger.i('Get Current User: ${user.displayName}(${user.uid})');
    } else {
      logger.i('No Current User');
    }

    return user;
  }

  // ignore: use_setters_to_change_properties
  void update(User user) {
    logger.i('Update Current User: ${user.displayName}(${user.uid})');
    state = user;
  }
}
