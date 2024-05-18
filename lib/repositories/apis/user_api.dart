import 'dart:ui';

import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class UserAPI {
  User setup({
    required String id,
    required String name,
    Image? avatar,
  });
  User update({
    required String id,
    String? name,
    Image? avatar,
  });
}
