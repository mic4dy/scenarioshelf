import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/repositories/auth/auth_api.dart';
import 'package:scenarioshelf/repositories/auth/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

import 'package:scenarioshelf/models/user/user.dart';
import 'package:scenarioshelf/repositories/databases/user/user_api.dart';
import 'package:scenarioshelf/repositories/storages/apis/user_avatar_api.dart';
import 'package:scenarioshelf/repositories/storages/user_avatar/user_avatar_repository.dart';
import 'package:scenarioshelf/utils/exceptions/user_exception.dart';

part 'user_repository.g.dart';

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  final authRepository = ref.read(authRepositoryProvider);
  final avatarRepository = ref.read(userAvatarRepositoryProvider);

  return UserRepository(
    authRepository: authRepository,
    avatarRepository: avatarRepository,
  );
}

class UserRepository implements UserAPI {
  const UserRepository({
    required AuthAPI authRepository,
    required UserAvatarAPI avatarRepository,
  })  : _authRepository = authRepository,
        _avatarRepository = avatarRepository;

  final AuthAPI _authRepository;
  final UserAvatarAPI _avatarRepository;

  @override
  Future<User> update({
    String? name,
    Uint8List? avatar,
  }) async {
    final currentUser = await _authRepository.getCurrentUser();
    final client = Supabase.instance.client;

    final url = (avatar != null) ? await _avatarRepository.upsert(avatar) : currentUser.avatarUrl;
    final response = await client.auth.updateUser(
      UserAttributes(
        data: {
          'username': name ?? currentUser.name,
          'avatar_url': url,
        },
      ),
    );
    final user = response.user;
    if (user == null) {
      throw const UserException(
        message: 'Failed to Setup User',
        display: 'ユーザ情報の設定に失敗しました',
      );
    }

    return User.fromSupabase(user);
  }
}
