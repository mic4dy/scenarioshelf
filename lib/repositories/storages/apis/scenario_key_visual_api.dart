import 'dart:typed_data';

// ignore: one_member_abstracts
abstract interface class ScenarioKeyVisualAPI {
  Future<String> upsert({
    required String scenarioId,
    required Uint8List keyVisual,
  });
}
