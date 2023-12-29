import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/repositories/firebase/analytics/analytics_repository.dart';

part 'analytics_observer.g.dart';

@riverpod
FirebaseAnalyticsObserver analyticsObserverRepository(AnalyticsObserverRepositoryRef ref) {
  return FirebaseAnalyticsObserver(analytics: ref.read(analyticsRepositoryProvider));
}
