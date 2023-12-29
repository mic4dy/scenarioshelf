// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoImpl _$$MemoImplFromJson(Map<String, dynamic> json) => _$MemoImpl(
      title: json['title'] as String,
      content: json['content'] as String,
      isPublic: json['isPublic'] as bool? ?? true,
    );

Map<String, dynamic> _$$MemoImplToJson(_$MemoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'isPublic': instance.isPublic,
    };
