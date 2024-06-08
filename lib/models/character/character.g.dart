// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      id: json['id'] as String,
      name: json['name'] as String,
      isPublic: json['is_public'] as bool,
      isCustomized: json['is_customized'] as bool,
      number: (json['number'] as num?)?.toInt(),
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_public': instance.isPublic,
      'is_customized': instance.isCustomized,
      'number': instance.number,
      'image_url': instance.imageUrl,
    };

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      isPublic: json['isPublic'] as bool? ?? true,
      isCustomized: json['isCustomized'] as bool? ?? false,
      number: (json['number'] as num?)?.toInt(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isPublic': instance.isPublic,
      'isCustomized': instance.isCustomized,
      'number': instance.number,
      'imageUrl': instance.imageUrl,
    };
