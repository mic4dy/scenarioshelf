import 'package:scenarioshelf/models/user/user.dart';

abstract interface class AuthAPI {
  Future<User> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<User> signInWithGoogle();
  User? getCurrentUser();
  Future<void> signOut();
}
