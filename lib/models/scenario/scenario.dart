import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/constants/domains/trpg_system.dart';

part 'scenario.freezed.dart';
part 'scenario.g.dart';

@freezed
class Scenario with _$Scenario {
  @Assert(r"kana == null || RegExp(r'^[ァ-ンヴー]+$').hasMatch(kana!)", 'フリガナに全角カタカナ以外の文字が含まれています')
  factory Scenario({
    required TRPGSystem trpgSystem,
    required String title,
    String? kana,
    String? keyVisualUrl,
    String? storeUrl,
    String? author,
  }) = _Scenario;

  factory Scenario.fromJson(Map<String, dynamic> json) => _$ScenarioFromJson(json);
}
