import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/constants/domains/trpg_system.dart';
import 'package:scenarioshelf/models/character/character.dart';

part 'scenario.freezed.dart';
part 'scenario.g.dart';

@freezed
class Scenario with _$Scenario {
  @JsonSerializable(fieldRename: FieldRename.snake)
  @Assert(r"kana == null || RegExp(r'^[ァ-ンヴー]+$').hasMatch(kana!)", 'フリガナに全角カタカナ以外の文字が含まれています')
  factory Scenario({
    required String id,
    @JsonKey(name: 'trpg_system') required TRPGSystem system,
    required String title,
    @Default([]) List<Character> characters,
    String? kana,
    String? keyVisualUrl,
    String? storeUrl,
    String? author,
  }) = _Scenario;

  factory Scenario.fromJson(Map<String, dynamic> json) => _$ScenarioFromJson(json);
}
