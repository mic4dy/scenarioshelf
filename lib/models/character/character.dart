import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class Character with _$Character {
  const factory Character({
    required String id,
    required String name,
    @Default(true) bool isPublic,
    @Default(false) bool isCustomized,
    int? number,
    String? imageUrl,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
}
