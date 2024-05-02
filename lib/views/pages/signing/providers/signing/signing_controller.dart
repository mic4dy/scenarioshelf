import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/repositories/apis/auth_api.dart';
import 'package:scenarioshelf/repositories/firebase/analytics/analytics_repository.dart';
import 'package:scenarioshelf/repositories/firebase/crashlytics/crashlytics_repository.dart';
import 'package:scenarioshelf/repositories/supabase/auth/auth_repository.dart';
import 'package:scenarioshelf/utils/exceptions/signing_exception.dart';
import 'package:scenarioshelf/utils/logger.dart';
import 'package:scenarioshelf/views/pages/signing/providers/signing/states/signing_state.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
        final user = await _authRepository.signUpWithEmailAndPassword(
          email: data.email,
          password: data.password,
        );

        ref.read(currentUserControllerProvider.notifier).update(user);

        state = AsyncValue.data(data);
        await ref.read(analyticsRepositoryProvider).logSignUp(signUpMethod: 'signUpWithEmailAndPassword');
      } on SigningException catch (error, stack) {
        logger.e(
          'Failed to execute SigningController.signUpWithEmailAndPassword',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(error, stack);
      } on AuthException catch (error, stack) {
        logger.e(
          'Failed to execute SigningController.signUpWithEmailAndPassword',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(
          SigningException(
            message: error.message,
            display: 'ログインに失敗しました',
          ),
          stack,
        );
      } on Exception catch (error, stack) {
        logger.e(
          'Failed to execute SigningController.signUpWithEmailAndPassword',
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
        final user = await _authRepository.signInWithEmailAndPassword(
          email: data.email,
          password: data.password,
        );

        ref.read(currentUserControllerProvider.notifier).update(user);

        state = AsyncValue.data(data);
        await ref.read(analyticsRepositoryProvider).logLogin(loginMethod: 'signInWithEmailAndPassword');
      } on SigningException catch (error, stack) {
        logger.e(
          'Failed to execute SigningController.signInWithEmailAndPassword',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(error, stack);
      } on AuthException catch (error, stack) {
        logger.e(
          'Failed to execute SigningController.signInWithEmailAndPassword',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(
          SigningException(
            message: error.message,
            display: 'ログインに失敗しました',
          ),
          stack,
        );
      } on Exception catch (error, stack) {
        logger.e(
          'Failed to execute SigningController.signInWithEmailAndPassword',
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
        final user = await _authRepository.signInWithGoogle();

        ref.read(currentUserControllerProvider.notifier).update(user);

        state = AsyncValue.data(data);
        await ref.read(analyticsRepositoryProvider).logLogin(loginMethod: 'signInWithGoogle');
      } on Exception catch (error, stack) {
        logger.e(
          'Failed to execute SigningController.signInWithGoogle',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(
          const SigningException(
            message: 'Google sign-in failed',
            display: 'ログインに失敗しました',
          ),
          stack,
        );
      }
    });
  }
}
