part of 'router.dart';

enum Routes {
  splash(path: '/path'),
  boot(path: '/boot'),
  signUp(path: 'signUp', parent: boot),
  signIn(path: 'signIn', parent: boot),
  emailVerification(path: '/emailVerification'),
  setupUser(path: '/setupUser'),
  home(path: '/home'),
  record(path: '/record');

  const Routes({
    required this.path,
    this.parent,
  });

  final String path;
  final Routes? parent;

  String get fullPath {
    if (parent != null) {
      return '${parent!.fullPath}/$path';
    }

    return path;
  }
}
