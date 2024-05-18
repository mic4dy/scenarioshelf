class DummyAvatar {
  static const String baseUrl = 'https://source.boringavatars.com';
  static const String mode = 'beam';
  static const int size = 512;
  static const List<String> colorCodes = [
    'ffffff',
    '000000',
    '7c4e29',
    '745945',
    '5E6136',
  ];
  static final String url = '$baseUrl/$mode/$size?colors=${colorCodes.join(',')}&square';

  static String urlWithId({required String? id}) => '$url/$id';
}
