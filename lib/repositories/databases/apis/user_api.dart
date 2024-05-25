import 'package:flutter/foundation.dart';

import 'package:scenarioshelf/models/user/user.dart';

// ignore: one_member_abstracts
abstract interface class UserAPI {
  Future<User> update({
    required String name,
    Uint8List? avatar,
  });
}
