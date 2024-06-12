import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:scenarioshelf/repositories/storages/apis/character_image_api.dart';

part 'character_image_repository.g.dart';

@riverpod
CharacterImageRepository characterImageRepository(CharacterImageRepositoryRef _) => const CharacterImageRepository();

class CharacterImageRepository implements CharacterImageAPI {
  const CharacterImageRepository();

  static const String bucketName = 'character_images';

  @override
  Future<String> upsert({
    required String characterId,
    required Uint8List image,
  }) async {
    final client = Supabase.instance.client;
    final path = await client.storage.from(bucketName).uploadBinary(
          '$characterId/image.jpeg',
          image,
          fileOptions: const FileOptions(
            upsert: true,
            contentType: 'image/jpeg',
          ),
        );

    return client.storage.from(bucketName).getPublicUrl(path.substring('$bucketName/'.length));
  }
}
