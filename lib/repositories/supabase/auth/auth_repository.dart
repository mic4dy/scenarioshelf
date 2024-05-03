import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/models/user/user.dart';
import 'package:scenarioshelf/repositories/apis/auth_api.dart';
import 'package:scenarioshelf/repositories/firebase/firebase_options.dart';
import 'package:scenarioshelf/utils/exceptions/signing_exception.dart';

import 'package:scenarioshelf/utils/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef _) => const AuthRepository();

class AuthRepository implements AuthAPI {
  const AuthRepository();

  @override
  Future<User> signUpWithEmailAndPassword({required String email, required String password}) async {
    final client = Supabase.instance.client;
    final response = await client.auth.signUp(email: email, password: password);
    final user = response.user;
    if (user == null) {
      throw const SigningException(
        message: 'user-not-found',
        display: 'ユーザーが見つかりません',
      );
    }

    logger.i('Signed Up with Email and Password');
    return User.fromSupabase(user);
  }

  @override
  Future<User> signInWithEmailAndPassword({required String email, required String password}) async {
    final client = Supabase.instance.client;
    final response = await client.auth.signInWithPassword(email: email, password: password);
    final user = response.user;
    if (user == null) {
      throw const SigningException(
        message: 'user-not-found',
        display: 'ユーザーが見つかりません',
      );
    }

    logger.i('Signed In with Email and Password');
    return User.fromSupabase(user);
  }

  @override
  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
      clientId: DefaultFirebaseOptions.currentPlatform.iosClientId,
      serverClientId: dotenv.get('GOOGLE_AUTH_WEB_CLIENT_ID'),
    ).signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final accessToken = googleAuth?.accessToken;
    if (accessToken == null) {
      throw const SigningException(
        message: 'google-sign-in-no-access-token',
        display: 'Googleアカウントでのサインインに失敗しました',
      );
    }
    final idToken = googleAuth?.idToken;
    if (idToken == null) {
      throw const SigningException(
        message: 'google-sign-in-no-id-token',
        display: 'Googleアカウントでのサインインに失敗しました',
      );
    }

    final client = Supabase.instance.client;
    final response = await client.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      accessToken: accessToken,
      idToken: idToken,
    );
    final user = response.user;
    if (user == null) {
      throw const SigningException(
        message: 'user-not-found',
        display: 'ユーザーが見つかりません',
      );
    }

    logger.i('Signed In with Google Account');
    return User.fromSupabase(user);
  }

  @override
  User? getCurrentUser() {
    final client = Supabase.instance.client;
    final user = client.auth.currentUser;
    if (user == null) {
      return null;
    }

    return User.fromSupabase(user);
  }

  @override
  Future<void> signOut() async {
    logger.i('Signed Out');
    await Supabase.instance.client.auth.signOut();
  }
}
