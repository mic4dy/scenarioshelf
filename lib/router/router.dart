import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/router/app_routes.dart';
import 'package:scenarioshelf/router/observers/log_observer.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final logObserver = ref.read(logObserverProvider);

  return GoRouter(
    observers: [
      logObserver,
    ],
    // initialLocation: Routes.splash.fullPath,
    initialLocation: const SplashRoute().location,
    routes: $appRoutes,
  );
}
