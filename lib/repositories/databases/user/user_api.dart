import 'package:scenarioshelf/models/user/user.dart';

// ignore: one_member_abstracts
abstract interface class UserAPI {
  Future<User> get({required String id});
}
