part of 'app_color.dart';

abstract class _UIColor {
  final Color white = const Color(0xFFffffff);
  final Color gray = const Color(0xFFe6e6e6);
  final Color success = const Color(0xFF00ff33);
  final Color loading = const Color(0xFFffb300);
  final Color error = const Color(0xFFff3300);

  Color get shimmerBase;
  Color get shimmerHighlight;
}

class LightUIColor extends _UIColor {
  @override
  Color get shimmerBase => const Color(0xFFefefef);

  @override
  // TODO: implement shimmerHighlight
  Color get shimmerHighlight => throw UnimplementedError();
}

class DarkUIColor extends _UIColor {
  @override
  Color get shimmerBase => const Color(0xFFefefef);

  @override
  // TODO: implement shimmerHighlight
  Color get shimmerHighlight => throw UnimplementedError();
}
