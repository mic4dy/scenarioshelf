import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/repositories/firebase/analytics/analytics_repository.dart';
import 'package:scenarioshelf/repositories/firebase/auth/auth_repository.dart';
import 'package:scenarioshelf/repositories/firebase/crashlytics/crashlytics_repository.dart';
import 'package:scenarioshelf/utils/exceptions/signing_exception.dart';
import 'package:scenarioshelf/utils/logger.dart';
import 'package:scenarioshelf/views/pages/signing/providers/signing/states/signing_state.dart';

part 'signing_controller.g.dart';

@riverpod
class SigningController extends _$SigningController {
  late final AuthAPI _authRepository;

  @override
  FutureOr<SigningState> build() {
    _authRepository = ref.read(authRepositoryProvider);

    return const SigningState();
  }

  void updateEmail(String email) {
    state.whenData((data) => state = AsyncData(data.copyWith(email: email)));
  }

  void updatePassword(String password) {
    state.whenData((data) => state = AsyncData(data.copyWith(password: password)));
  }

  Future<void> signUpWithEmailAndPassword() async {
    state.whenData((data) async {
      state = const AsyncValue.loading();

      try {
        final User user = await _authRepository.signUpWithEmailAndPassword(
          email: data.email,
          password: data.password,
        );

        ref.read(currentUserControllerProvider.notifier).update(user);

        state = AsyncValue.data(data);
        await ref.read(analyticsRepositoryProvider).logSignUp(signUpMethod: 'signUpWithEmailAndPassword');
      } on FirebaseAuthException catch (error, stack) {
        logger.e(
          'Failed to execute UserViewModel.signUpWithEmailAndPassword',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        if (error.code == 'weak-password') {
          state = AsyncValue.error(
            const SigningException(
              message: 'Password is weak (FirebaseAuthException)',
              display: 'パスワードが脆弱です',
            ),
            stack,
          );
        } else if (error.code == 'email-already-in-use') {
          state = AsyncValue.error(
            const SigningException(
              message: 'Email is already in use (FirebaseAuthException)',
              display: '既に登録されたメールアドレスです',
            ),
            stack,
          );
        } else {
          state = AsyncValue.error(
            SigningException(
              message: error.toString(),
              display: '登録に失敗しました',
            ),
            stack,
          );
        }
      } on Exception catch (error, stack) {
        logger.e(
          'Failed to execute UserViewModel.signUpWithEmailAndPassword',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(
          SigningException(
            message: error.toString(),
            display: '原因不明のエラーが発生しました',
          ),
          stack,
        );
      }
    });
  }

  Future<void> signInWithEmailAndPassword() async {
    state.whenData((data) async {
      state = const AsyncValue.loading();

      try {
        final User user = await _authRepository.signInWithEmailAndPassword(
          email: data.email,
          password: data.password,
        );

        ref.read(currentUserControllerProvider.notifier).update(user);

        state = AsyncValue.data(data);
        await ref.read(analyticsRepositoryProvider).logLogin(loginMethod: 'signInWithEmailAndPassword');
      } on FirebaseAuthException catch (error, stack) {
        logger.e(
          'Failed to execute UserViewModel.signInWithEmailAndPassword',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        if (error.code == 'user-not-found') {
          state = AsyncValue.error(
            const SigningException(
              message: 'User is not found (FirebaseAuthException)',
              display: 'メールアドレスかパスワード正しくありません',
            ),
            stack,
          );
        } else if (error.code == 'wrong-password') {
          state = AsyncValue.error(
            const SigningException(
              message: 'Wrong password (FirebaseAuthException)',
              display: 'メールアドレスかパスワード正しくありません',
            ),
            stack,
          );
        } else {
          state = AsyncValue.error(
            SigningException(
              message: error.toString(),
              display: 'ログインに失敗しました',
            ),
            stack,
          );
        }
      } on Exception catch (error, stack) {
        logger.e(
          'Failed to execute UserViewModel.signInWithEmailAndPassword',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(
          SigningException(
            message: error.toString(),
            display: '原因不明のエラーが発生しました',
          ),
          stack,
        );
      }
    });
  }

  Future<void> signInWithGoogle() async {
    state.whenData((data) async {
      state = const AsyncValue.loading();

      try {
        final User user = await _authRepository.signInWithGoogle();

        ref.read(currentUserControllerProvider.notifier).update(user);

        state = AsyncValue.data(data);
        await ref.read(analyticsRepositoryProvider).logLogin(loginMethod: 'signInWithGoogle');
      } on Exception catch (error, stack) {
        logger.e(
          'Failed to execute UserViewModel.signInWithGoogle',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(
          const SigningException(
            message: 'Google sign-in failed (FirebaseAuthException)',
            display: 'ログインに失敗しました',
          ),
          stack,
        );
      }
    });
  }
}
