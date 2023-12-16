import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:scenarioshelf/repositories/firebase/firebase_options.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/utils/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await initializeDateFormatting('ja_JP');
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
  if (kDebugMode) {
    try {
      await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    } catch (error, stack) {
      logger.e(
        'Firebase Auth emulator is not running.',
        error: error,
        stackTrace: stack,
      );
    }
  }
  runApp(const ProviderScope(child: Scenarioshelf()));
}

class Scenarioshelf extends ConsumerWidget {
  const Scenarioshelf({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Scenarioshelf',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
