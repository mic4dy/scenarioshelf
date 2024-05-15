import 'package:flutter/foundation.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

import 'package:scenarioshelf/models/user/user.dart';
import 'package:scenarioshelf/repositories/apis/auth_api.dart';
import 'package:scenarioshelf/repositories/firebase/firebase_options/dev/firebase_options.dart' as dev_firebase_options;
import 'package:scenarioshelf/repositories/firebase/firebase_options/prod/firebase_options.dart' as prod_firebase_options;
import 'package:scenarioshelf/repositories/firebase/firebase_options/stg/firebase_options.dart' as stg_firebase_options;
import 'package:scenarioshelf/utils/environment.dart';
import 'package:scenarioshelf/utils/exceptions/signing_exception.dart';
import 'package:scenarioshelf/utils/logger.dart';

part 'auth_repository.g.dart';

// ignore: constant_identifier_names
const EMAIL_REDIRECT_URL = 'io.supabase.flutterquickstart://login-callback/';

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef _) => const AuthRepository();

class AuthRepository implements AuthAPI {
  const AuthRepository();

  @override
  Future<User> signUpWithEmailAndPassword({required String email, required String password}) async {
    final client = Supabase.instance.client;
    final response = await client.auth.signUp(
      email: email,
      password: password,
      emailRedirectTo: kIsWeb ? null : EMAIL_REDIRECT_URL,
    );
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
  Future<void> resendConfirmEmail({required String email}) async {
    final client = Supabase.instance.client;
    final response = await client.auth.resend(
      type: OtpType.signup,
      email: email,
      emailRedirectTo: kIsWeb ? null : EMAIL_REDIRECT_URL,
    );

    logger
      ..i('Resend Confirm Email')
      ..i('Response messageId: ${response.messageId}');

    return;
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
    final options = switch (Environment.flavor) {
      Flavor.dev => dev_firebase_options.DefaultFirebaseOptions.currentPlatform,
      Flavor.stg => stg_firebase_options.DefaultFirebaseOptions.currentPlatform,
      Flavor.prod => prod_firebase_options.DefaultFirebaseOptions.currentPlatform,
    };
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
      clientId: options.iosClientId,
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
    final user = client.auth.currentSession?.user;
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
