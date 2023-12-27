import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scenarioshelf/models/character/character.dart';

part 'player.freezed.dart';

@freezed
class Player with _$Player {
  const factory Player({
    required String name,
    String? userId,
    String? xId,
    String? discordId,
    Character? character,
  }) = _Player;
}
