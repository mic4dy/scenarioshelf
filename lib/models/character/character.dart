import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const factory Character({
    required String name,
    @Default(true) bool isPublic,
    @Default([]) List<String> handoutUrls,
    String? imageUrl,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
}
