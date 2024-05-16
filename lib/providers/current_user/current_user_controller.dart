import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/models/user/user.dart';
import 'package:scenarioshelf/repositories/apis/auth_api.dart';
import 'package:scenarioshelf/repositories/supabase/auth/auth_repository.dart';
import 'package:scenarioshelf/utils/logger.dart';

part 'current_user_controller.g.dart';

@Riverpod(keepAlive: true)
class CurrentUserController extends _$CurrentUserController {
  @override
  User? build() {
    final AuthAPI repository = ref.read(authRepositoryProvider);
    final user = repository.getCurrentUser();
    if (user != null) {
      logger.i('Get Current User: ${user.name}(${user.id})');
    } else {
      logger.i('No Current User');
    }

    return user;
  }

  void update(User? user) {
    if (user != null) {
      logger.i('Update Current User: ${user.name}(${user.id})');
    } else {
      logger.i('Reset Current User');
    }

    state = user;
  }
}
