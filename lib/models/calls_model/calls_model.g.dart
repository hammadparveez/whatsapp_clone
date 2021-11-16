// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calls_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CallModel _$$_CallModelFromJson(Map<String, dynamic> json) => _$_CallModel(
      name: json['name'] as String,
      time: json['time'] as String,
      profileImage: json['profileImage'] as String,
      isMissed: json['isMissed'] as bool?,
      isVideo: json['isVideo'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CallModelToJson(_$_CallModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'time': instance.time,
      'profileImage': instance.profileImage,
      'isMissed': instance.isMissed,
      'isVideo': instance.isVideo,
    };
