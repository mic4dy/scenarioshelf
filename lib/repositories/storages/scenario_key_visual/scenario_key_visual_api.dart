import 'dart:typed_data';

import 'package:scenarioshelf/utils/extension_types/id.dart';

// ignore: one_member_abstracts
abstract interface class ScenarioKeyVisualAPI {
  Future<String> upsert({
    required ID scenarioId,
    required Uint8List keyVisual,
  });
}
