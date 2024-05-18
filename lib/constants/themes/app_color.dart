// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AppColor {
  static final material = _AppMaterial();
  static final ui = _UI();
}

class _AppMaterial {
  final light = const _AppMaterialLight();
  final dark = const _AppMaterialDark();
}

class _AppMaterialLight extends ColorScheme {
  const _AppMaterialLight()
      : super(
          brightness: Brightness.light,
          primary: const Color(0xFF7C4E29),
          onPrimary: const Color(0xFFFFFFFF),
          primaryContainer: const Color(0xFFFFDCC4),
          onPrimaryContainer: const Color(0xFF2F1400),
          secondary: const Color(0xFF745945),
          onSecondary: const Color(0xFFFFFFFF),
          secondaryContainer: const Color(0xFFFFDCC4),
          onSecondaryContainer: const Color(0xFF2A1708),
          tertiary: const Color(0xFF5E6136),
          onTertiary: const Color(0xFFFFFFFF),
          tertiaryContainer: const Color(0xFFE3E7AF),
          onTertiaryContainer: const Color(0xFF1A1D00),
          error: const Color(0xFFff3300),
          errorContainer: const Color(0xFFFFDAD6),
          onError: const Color(0xFFFFFFFF),
          onErrorContainer: const Color(0xFF410002),
          background: const Color(0xFFFFFBFF),
          onBackground: const Color(0xFF201A17),
          surface: const Color(0xFFFFFBFF),
          onSurface: const Color(0xFF201A17),
          surfaceVariant: const Color(0xFFF3DFD2),
          onSurfaceVariant: const Color(0xFF52443B),
          outline: const Color(0xFF84746A),
          onInverseSurface: const Color(0xFFFBEEE8),
          inverseSurface: const Color(0xFF362F2B),
          inversePrimary: const Color(0xFFFFB781),
          shadow: const Color(0xFF000000),
          surfaceTint: const Color(0xFF924C00),
          outlineVariant: const Color(0xFFD6C3B7),
          scrim: const Color(0xFF000000),
        );
}

class _AppMaterialDark extends ColorScheme {
  const _AppMaterialDark()
      : super(
          brightness: Brightness.dark,
          primary: const Color(0xFFFFB781),
          onPrimary: const Color(0xFF4E2600),
          primaryContainer: const Color(0xFF6F3800),
          onPrimaryContainer: const Color(0xFFFFDCC4),
          secondary: const Color(0xFFE4BFA7),
          onSecondary: const Color(0xFF422B1A),
          secondaryContainer: const Color(0xFF5B412F),
          onSecondaryContainer: const Color(0xFFFFDCC4),
          tertiary: const Color(0xFFC7CA95),
          onTertiary: const Color(0xFF2F330C),
          tertiaryContainer: const Color(0xFF464A20),
          onTertiaryContainer: const Color(0xFFE3E7AF),
          error: const Color(0xFFff3300),
          errorContainer: const Color(0xFF93000A),
          onError: const Color(0xFF690005),
          onErrorContainer: const Color(0xFFFFDAD6),
          background: const Color(0xFF201A17),
          onBackground: const Color(0xFFECE0DA),
          surface: const Color(0xFF201A17),
          onSurface: const Color(0xFFECE0DA),
          surfaceVariant: const Color(0xFF52443B),
          onSurfaceVariant: const Color(0xFFD6C3B7),
          outline: const Color(0xFF9F8D82),
          onInverseSurface: const Color(0xFF201A17),
          inverseSurface: const Color(0xFFECE0DA),
          inversePrimary: const Color(0xFF924C00),
          shadow: const Color(0xFF000000),
          surfaceTint: const Color(0xFFFFB781),
          outlineVariant: const Color(0xFF52443B),
          scrim: const Color(0xFF000000),
        );
}

class _UI {
  final Color white = const Color(0xFFffffff);
  final Color success = const Color(0xFF00ff33);
  final Color loading = const Color(0xFFffb300);
  final Color error = const Color(0xFFff3300);
  final Color shimmerBase = const Color(0xFFefefef);
}
