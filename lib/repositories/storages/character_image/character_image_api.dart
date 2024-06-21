import 'dart:typed_data';

import 'package:scenarioshelf/utils/extension_types/id.dart';

// ignore: one_member_abstracts
abstract interface class CharacterImageAPI {
  Future<String> upsert({
    required ID characterId,
    required Uint8List image,
  });
}
