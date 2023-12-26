import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/views/pages/boot/boot_page.dart';
import 'package:scenarioshelf/views/pages/signing/sign_in/sign_in_page.dart';
import 'package:scenarioshelf/views/pages/signing/sign_up/sign_up_page.dart';

part 'router.g.dart';
part 'routes.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: Routes.splash.path,
    routes: [
      GoRoute(
        path: Routes.splash.path,
        redirect: (context, state) {
          final userState = ref.read(currentUserControllerProvider);

          if (userState is AsyncData && userState.value != null) {
            return Routes.home.path;
          }

          return Routes.boot.path;
        },
      ),
      GoRoute(
        path: Routes.boot.path,
        builder: (context, state) => const BootPage(),
      ),
      GoRoute(
        path: Routes.signUp.path,
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: Routes.signIn.path,
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: Routes.home.path,
        builder: (context, state) => const Scaffold(),
      ),
    ],
  );
}
