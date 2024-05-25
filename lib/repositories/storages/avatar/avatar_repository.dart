import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/repositories/storages/apis/avatar_api.dart';
import 'package:scenarioshelf/utils/exceptions/user_exception.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'avatar_repository.g.dart';

@riverpod
AvatarRepository avatarRepository(AvatarRepositoryRef _) => const AvatarRepository();

class AvatarRepository implements AvatarAPI {
  const AvatarRepository();

  @override
  Future<String> update(Uint8List avatar) async {
    final client = Supabase.instance.client;
    final currentUserResponse = await client.auth.getUser();
    final currentUser = currentUserResponse.user;
    if (currentUser == null) {
      throw const UserException(
        message: 'Failed to Get Current User',
        display: 'ユーザ情報の取得に失敗しました',
      );
    }

    final path = await client.storage.from('avatars').uploadBinary(
          '${currentUser.id}/avatar.jpeg',
          avatar,
          fileOptions: const FileOptions(
            upsert: true,
            contentType: 'image/jpeg',
          ),
        );

    return client.storage.from('avatars').getPublicUrl(path.substring('avatars/'.length));
  }
}
