import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:scenarioshelf/constants/themes/app_color.dart';
import 'package:scenarioshelf/repositories/firebase/analytics/analytics_repository.dart';
import 'package:scenarioshelf/repositories/firebase/firebase_options.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/utils/environment.dart';
import 'package:scenarioshelf/utils/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await initializeDateFormatting('ja_JP');
  await AppTrackingTransparency.requestTrackingAuthorization();

  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    logger.e(
      'Unhandled Platform error has occurred.',
      error: error,
      stackTrace: stack,
    );
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  if (kDebugMode) {
    try {
      await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
      FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
    } catch (error, stack) {
      logger.e(
        'Firebase Auth emulator is not running.',
        error: error,
        stackTrace: stack,
      );
    }
  }

  final envFileName = switch (Environment.flavor) {
    Flavor.dev => '.env',
    Flavor.stg => '.env.stg',
    Flavor.prod => '.env.prod',
  };
  await dotenv.load(fileName: envFileName);
  await Supabase.initialize(
    url: dotenv.get('SUPABASE_URL'),
    anonKey: dotenv.get('SUPABASE_KEY'),
  );

  runApp(const ProviderScope(child: Scenarioshelf()));
}

class Scenarioshelf extends ConsumerWidget {
  const Scenarioshelf({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    ref.read(analyticsRepositoryProvider).logAppOpen();

    return MaterialApp.router(
      title: 'Scenarioshelf',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: AppColor.material.light,
        textTheme: GoogleFonts.ibmPlexSansJpTextTheme(),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: AppColor.material.dark,
        textTheme: GoogleFonts.ibmPlexSansJpTextTheme(),
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
