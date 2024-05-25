import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';

part 'analytics_repository.g.dart';

@Riverpod(keepAlive: true)
FirebaseAnalytics analyticsRepository(AnalyticsRepositoryRef ref) {
  final analyticsRepository = FirebaseAnalytics.instance;
  ref.listen(currentUserControllerProvider, (_, next) async {
    await analyticsRepository.setUserId(id: next?.id);
  });

  return analyticsRepository;
}
