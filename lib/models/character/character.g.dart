// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      name: json['name'] as String,
      isPublic: json['isPublic'] as bool? ?? true,
      handoutUrls: (json['handoutUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isPublic': instance.isPublic,
      'handoutUrls': instance.handoutUrls,
      'imageUrl': instance.imageUrl,
    };
