import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/repositories/auth/auth_api.dart';
import 'package:scenarioshelf/repositories/auth/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:scenarioshelf/repositories/storages/apis/user_avatar_api.dart';

part 'user_avatar_repository.g.dart';

@riverpod
UserAvatarRepository userAvatarRepository(UserAvatarRepositoryRef ref) {
  final authRepository = ref.read(authRepositoryProvider);

  return UserAvatarRepository(authRepository: authRepository);
}

class UserAvatarRepository implements UserAvatarAPI {
  const UserAvatarRepository({required AuthAPI authRepository}) : _authRepository = authRepository;

  static const String bucketName = 'user_avatars';
  final AuthAPI _authRepository;

  @override
  Future<String> upsert(Uint8List avatar) async {
    final currentUser = await _authRepository.getCurrentUser();
    final client = Supabase.instance.client;
    final path = await client.storage.from(bucketName).uploadBinary(
          '${currentUser.id}/avatar.jpeg',
          avatar,
          fileOptions: const FileOptions(
            upsert: true,
            contentType: 'image/jpeg',
          ),
        );

    return client.storage.from(bucketName).getPublicUrl(path.substring('$bucketName/'.length));
  }
}
