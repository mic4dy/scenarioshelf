import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'new_character.freezed.dart';

@freezed
class NewCharacter with _$NewCharacter {
  factory NewCharacter({
    required String scenarioId,
    required String name,
    bool isPublic = true,
    bool isCustomized = false,
    int? number,
    Uint8List? image,
  }) {
    return NewCharacter.inserting(
      id: const Uuid().v4(),
      scenarioId: scenarioId,
      name: name,
      isPublic: isPublic,
      isCustomized: isCustomized,
      number: number,
      image: image,
    );
  }

  const factory NewCharacter.inserting({
    required String id,
    required String scenarioId,
    required String name,
    required bool isPublic,
    required bool isCustomized,
    int? number,
    Uint8List? image,
  }) = _NewCharacter;
}
