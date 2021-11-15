// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatusModel _$$_StatusModelFromJson(Map<String, dynamic> json) =>
    _$_StatusModel(
      statusID: json['statusID'] as int,
      totalStatusCount: json['totalStatusCount'] as int,
      seenStatusCount: json['seenStatusCount'] as int,
      postedBy: json['postedBy'] as String,
      time: json['time'] as String,
    );

Map<String, dynamic> _$$_StatusModelToJson(_$_StatusModel instance) =>
    <String, dynamic>{
      'statusID': instance.statusID,
      'totalStatusCount': instance.totalStatusCount,
      'seenStatusCount': instance.seenStatusCount,
      'postedBy': instance.postedBy,
      'time': instance.time,
    };
