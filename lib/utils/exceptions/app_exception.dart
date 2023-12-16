abstract class AppException implements Exception {
  const AppException({
    required this.message,
    this.display,
  });

  final String message;
  final String? display;

  @override
  // ignore: no_runtimetype_tostring
  String toString() => '$runtimeType: ${display ?? message}';
}
