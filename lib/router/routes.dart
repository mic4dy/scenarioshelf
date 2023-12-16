part of 'router.dart';

enum Routes {
  splash(path: '/path'),
  boot(path: '/boot'),
  signUp(path: '/signUp'),
  signIn(path: '/signIn'),
  home(path: '/home');

  const Routes({required this.path});

  final String path;
}
