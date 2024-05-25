import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/models/user/user.dart';
import 'package:scenarioshelf/repositories/databases/apis/user_api.dart';
import 'package:scenarioshelf/repositories/storages/apis/avatar_api.dart';
import 'package:scenarioshelf/repositories/storages/avatar/avatar_repository.dart';
import 'package:scenarioshelf/utils/exceptions/user_exception.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

part 'user_repository.g.dart';

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  final avatarRepository = ref.read(avatarRepositoryProvider);

  return UserRepository(avatarRepository: avatarRepository);
}

class UserRepository implements UserAPI {
  UserRepository({required this.avatarRepository});

  final AvatarAPI avatarRepository;

  @override
  Future<User> update({
    String? name,
    Uint8List? avatar,
  }) async {
    final client = Supabase.instance.client;
    final currentUserResponse = await client.auth.getUser();
    final currentUser = currentUserResponse.user;
    if (currentUser == null) {
      throw const UserException(
        message: 'Failed to Get Current User',
        display: 'ユーザ情報の取得に失敗しました',
      );
    }

    final currentUsername = currentUser.userMetadata?['username'];
    final currentAvatarUrl = currentUser.userMetadata?['avatar_url'];
    final url = (avatar != null) ? await avatarRepository.update(avatar) : currentAvatarUrl;
    final response = await client.auth.updateUser(
      UserAttributes(
        data: {
          'username': name ?? currentUsername,
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
