import 'dart:typed_data';

// ignore: one_member_abstracts
abstract interface class UserAvatarAPI {
  Future<String> upsert(Uint8List avatar);
}
