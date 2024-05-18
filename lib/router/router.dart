import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/repositories/firebase/analytics/observer/analytics_observer.dart';
import 'package:scenarioshelf/views/pages/boot/boot_page.dart';
import 'package:scenarioshelf/views/pages/home/home_page.dart';
import 'package:scenarioshelf/views/pages/signing/email_verification/email_verification_page.dart';
import 'package:scenarioshelf/views/pages/signing/providers/provisionally_registered_user/provisionally_registered_user_controller.dart';
import 'package:scenarioshelf/views/pages/signing/sign_in/sign_in_page.dart';
import 'package:scenarioshelf/views/pages/signing/sign_up/sign_up_page.dart';
import 'package:scenarioshelf/views/pages/splash/splash_page.dart';
import 'package:scenarioshelf/views/pages/user_setting/setup/setup_user_page.dart';

part 'router.g.dart';
part 'routes.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final analyticsObserver = ref.read(analyticsObserverRepositoryProvider);

  return GoRouter(
    observers: [
      analyticsObserver,
    ],
    initialLocation: Routes.splash.fullPath,
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) => Routes.splash.path,
      ),
      GoRoute(
        path: Routes.splash.path,
        name: Routes.splash.fullPath,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: Routes.boot.path,
        name: Routes.boot.fullPath,
        builder: (context, state) => const BootPage(),
        routes: [
          GoRoute(
            path: Routes.signUp.path,
            name: Routes.signUp.fullPath,
            builder: (context, state) => const SignUpPage(),
          ),
          GoRoute(
            path: Routes.signIn.path,
            name: Routes.signIn.fullPath,
            builder: (context, state) => const SignInPage(),
          ),
        ],
      ),
      GoRoute(
        path: Routes.emailVerification.path,
        name: Routes.emailVerification.fullPath,
        builder: (context, state) => const EmailVerificationPage(),
      ),
      GoRoute(
        path: Routes.setupUser.path,
        name: Routes.setupUser.fullPath,
        builder: (context, state) => const SetupUserPage(),
      ),
      GoRoute(
        path: Routes.home.path,
        name: Routes.home.fullPath,
        builder: (context, state) => const HomePage(),
        redirect: (context, state) {
          final provisionallyRegisteredUser = ref.read(provisionallyRegisteredUserControllerProvider);
          final user = ref.read(currentUserControllerProvider);

          if (provisionallyRegisteredUser != null && provisionallyRegisteredUser.name == null && user == null) {
            return Routes.setupUser.fullPath;
          }

          return null;
        },
      ),
      GoRoute(
        path: Routes.record.path,
        name: Routes.record.fullPath,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Record'),
            ),
          ),
          transitionDuration: const Duration(milliseconds: 200),
          reverseTransitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(0, 0.5),
                end: Offset.zero,
              ),
            ),
            child: child,
          ),
        ),
      ),
    ],
  );
}
