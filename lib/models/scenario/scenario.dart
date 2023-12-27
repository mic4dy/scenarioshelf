import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scenarioshelf/constants/domains/trpg_system.dart';

part 'scenario.freezed.dart';

@freezed
class Scenario with _$Scenario {
  @Assert(r"kana == null || RegExp(r'^[ァ-ンヴー]+$').hasMatch(kana!)", 'フリガナに全角カタカナ以外の文字が含まれています')
  const factory Scenario({
    required TRPGSystem system,
    required String name,
    String? imageUrl,
    String? storeUrl,
    String? kana,
    String? author,
  }) = _Scenario;
}
