import 'package:scenarioshelf/models/user/user.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';

// ignore: one_member_abstracts
abstract interface class UserAPI {
  Future<User> get({required ID id});
}
