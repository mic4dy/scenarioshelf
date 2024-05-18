import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

import 'package:scenarioshelf/repositories/apis/auth_api.dart';
import 'package:scenarioshelf/repositories/firebase/analytics/analytics_repository.dart';
import 'package:scenarioshelf/repositories/firebase/crashlytics/crashlytics_repository.dart';
import 'package:scenarioshelf/repositories/supabase/auth/auth_repository.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/utils/exceptions/app_auth_exception.dart';
import 'package:scenarioshelf/utils/logger.dart';
import 'package:scenarioshelf/views/pages/signing/providers/provisionally_registered_user/provisionally_registered_user_controller.dart';
import 'package:scenarioshelf/views/pages/signing/providers/signing/states/signing_state.dart';

part 'signing_controller.g.dart';

@Riverpod(keepAlive: true)
class SigningController extends _$SigningController {
  late final AuthAPI _authRepository;

  @override
  FutureOr<SigningState> build() {
    _authRepository = ref.read(authRepositoryProvider);

    return const SigningState();
  }

  void resolve() {
    state.maybeWhen(
      error: (error, stack) {
        state = AsyncValue.data(state.valueOrNull ?? const SigningState());
      },
      orElse: () {},
    );
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

        ref.read(provisionallyRegisteredUserControllerProvider.notifier).update(user);

        state = AsyncValue.data(data);
        await ref.read(analyticsRepositoryProvider).logSignUp(signUpMethod: 'signUpWithEmailAndPassword');
      } on AppAuthException catch (error, stack) {
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
          AppAuthException(
            message: error.message,
            display: 'ユーザの登録に失敗しました',
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
          AppAuthException(
            message: error.toString(),
            display: '原因不明のエラーが発生しました',
          ),
          stack,
        );
      } finally {
        if (state is AsyncLoading) {
          state = AsyncValue.data(data);
        }
      }
    });
  }

  Future<void> resendConfirmEmail() async {
    state.whenData((data) async {
      try {
        await _authRepository.resendConfirmEmail(email: data.email);
      } on AppAuthException catch (error, stack) {
        logger.e(
          'Failed to execute SigningController.resendConfirmEmail',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(
          AppAuthException(
            message: error.toString(),
            display: '再送に失敗しました',
          ),
          stack,
        );
      } on Exception catch (error, stack) {
        logger.e(
          'Failed to execute SigningController.resendConfirmEmail',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(
          AppAuthException(
            message: error.toString(),
            display: '原因不明のエラーが発生しました',
          ),
          stack,
        );
      } finally {
        if (state is AsyncLoading) {
          state = AsyncValue.data(data);
        }
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

        ref.read(provisionallyRegisteredUserControllerProvider.notifier).update(user);

        state = AsyncValue.data(data);

        /// BUG: 非同期処理が正常に実行されない
        ///
        /// この関数の後に処理を書くと[_authRepository.signInWithEmailAndPassword]の内部で読んでいる
        /// [client.auth.signInWithPassword]の処理が非同期終了せずにこの関数の後のコードが先に実行される。
        /// ライブラリのバグっぽいので現状はこの関数内の末尾に追記することで対応している。
        ref.read(routerProvider).go(Routes.home.fullPath);

        await ref.read(analyticsRepositoryProvider).logLogin(loginMethod: 'signInWithEmailAndPassword');
      } on AppAuthException catch (error, stack) {
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

        switch (error.statusCode) {
          case '400':
            state = AsyncValue.error(
              AppAuthException(
                message: error.message,
                display: '認証メールの確認がされていません',
              ),
              stack,
            );
          default:
            state = AsyncValue.error(
              AppAuthException(
                message: error.message,
                display: 'ログインに失敗しました',
              ),
              stack,
            );
        }
      } on Exception catch (error, stack) {
        logger.e(
          'Failed to execute SigningController.signInWithEmailAndPassword',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(
          AppAuthException(
            message: error.toString(),
            display: '原因不明のエラーが発生しました',
          ),
          stack,
        );
      } finally {
        if (state is AsyncLoading) {
          state = AsyncValue.data(data);
        }
      }
    });
  }

  Future<void> signInWithGoogle() async {
    state.whenData((data) async {
      state = const AsyncValue.loading();

      try {
        final user = await _authRepository.signInWithGoogle();

        ref.read(provisionallyRegisteredUserControllerProvider.notifier).update(user);

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
          const AppAuthException(
            message: 'Google sign-in failed',
            display: 'ログインに失敗しました',
          ),
          stack,
        );
      } finally {
        if (state is AsyncLoading) {
          state = AsyncValue.data(data);
        }
      }
    });
  }
}
