// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scenario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScenarioImpl _$$ScenarioImplFromJson(Map<String, dynamic> json) =>
    _$ScenarioImpl(
      system: $enumDecode(_$TRPGSystemEnumMap, json['system']),
      title: json['title'] as String,
      kana: json['kana'] as String?,
      keyVisualUrl: json['keyVisualUrl'] as String?,
      storeUrl: json['storeUrl'] as String?,
      author: json['author'] as String?,
    );

Map<String, dynamic> _$$ScenarioImplToJson(_$ScenarioImpl instance) =>
    <String, dynamic>{
      'system': _$TRPGSystemEnumMap[instance.system]!,
      'title': instance.title,
      'kana': instance.kana,
      'keyVisualUrl': instance.keyVisualUrl,
      'storeUrl': instance.storeUrl,
      'author': instance.author,
    };

const _$TRPGSystemEnumMap = {
  TRPGSystem.mm: 'mm',
  TRPGSystem.coc6: 'coc6',
  TRPGSystem.coc7: 'coc7',
  TRPGSystem.ek: 'ek',
  TRPGSystem.sw20: 'sw20',
  TRPGSystem.sw25: 'sw25',
  TRPGSystem.shinobi: 'shinobi',
  TRPGSystem.dx3rd: 'dx3rd',
  TRPGSystem.dd: 'dd',
  TRPGSystem.sp: 'sp',
  TRPGSystem.other: 'other',
};
