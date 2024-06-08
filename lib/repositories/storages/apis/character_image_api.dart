import 'dart:typed_data';

// ignore: one_member_abstracts
abstract interface class CharacterImageAPI {
  Future<String> upsert({
    required String characterId,
    required Uint8List image,
  });
}
