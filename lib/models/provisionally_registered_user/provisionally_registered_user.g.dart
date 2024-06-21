// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provisionally_registered_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProvisionallyRegisteredUserImpl _$$ProvisionallyRegisteredUserImplFromJson(
        Map<String, dynamic> json) =>
    _$ProvisionallyRegisteredUserImpl(
      id: ID.fromJson(json['id'] as String),
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$ProvisionallyRegisteredUserImplToJson(
        _$ProvisionallyRegisteredUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
    };
