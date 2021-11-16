// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      userID: json['userID'] as String,
      messageID: json['messageID'] as String,
      message: json['message'] as String,
      time: json['time'] as String,
      isSent: json['isSent'] as bool,
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'messageID': instance.messageID,
      'message': instance.message,
      'time': instance.time,
      'isSent': instance.isSent,
    };
