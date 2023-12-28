import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/models/character/character.dart';
import 'package:scenarioshelf/models/memo/memo.dart';
import 'package:scenarioshelf/models/player/player.dart';
import 'package:scenarioshelf/models/scenario/scenario.dart';
import 'package:scenarioshelf/models/schedule/schedule.dart';

part 'session.freezed.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required String userId,
    required Scenario scenario,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default([]) List<Schedule> schedules,
    @Default([]) List<Memo> memos,
    @Default([]) List<Player> otherPlayers,
    Character? playedCharacter,
  }) = _Session;
}
