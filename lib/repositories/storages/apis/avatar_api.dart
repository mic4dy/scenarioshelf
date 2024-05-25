import 'dart:typed_data';

// ignore: one_member_abstracts
abstract interface class AvatarAPI {
  Future<String> update(Uint8List avatar);
}
