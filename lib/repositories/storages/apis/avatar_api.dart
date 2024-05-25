import 'dart:typed_data';

abstract interface class AvatarAPI {
  Future<String> update(Uint8List avatar);
}
