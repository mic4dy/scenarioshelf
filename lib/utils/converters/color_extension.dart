import 'dart:ui';

extension ColorsExtension on Color {
  String toHex() {
    final colorStr = value.toRadixString(16);
    if (colorStr.length == 8) {
      final hexColor = colorStr.substring(2);
      final transparent = colorStr.substring(0, 2);
      if (transparent == 'ff') {
        return hexColor;
      } else {
        return hexColor + transparent;
      }
    } else {
      return '${colorStr}00';
    }
  }
}
