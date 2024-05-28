import 'package:flutter/material.dart';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/repositories/firebase/analytics/analytics_repository.dart';

part 'log_observer.g.dart';

@riverpod
LogObserver logObserver(LogObserverRef ref) {
  final analytics = ref.read(analyticsRepositoryProvider);
  return LogObserver(analytics: analytics);
}

class LogObserver extends FirebaseAnalyticsObserver {
  LogObserver({required super.analytics});

  @override
  Future<void> didPush(Route<dynamic> route, Route<dynamic>? previousRoute) async {
    await analytics.logScreenView(screenName: route.settings.name);
  }

  @override
  Future<void> didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) async {
    await analytics.logScreenView(screenName: newRoute?.settings.name);
  }

  @override
  Future<void> didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) async {
    await analytics.logScreenView(screenName: route.settings.name);
  }

  @override
  Future<void> didPop(Route<dynamic> route, Route<dynamic>? previousRoute) async {
    await analytics.logScreenView(screenName: route.settings.name);
  }
}
