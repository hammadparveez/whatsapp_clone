// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatModel _$$_ChatModelFromJson(Map<String, dynamic> json) => _$_ChatModel(
      userId: json['userId'] as String,
      senderName: json['senderName'] as String,
      profileImage: json['profileImage'] as String,
      msg: json['msg'] as String,
      time: json['time'] as String,
      isPinned: json['isPinned'] as bool? ?? false,
      isRead: json['isRead'] as bool? ?? true,
      isMute: json['isMute'] as bool? ?? false,
      isArchived: json['isArchived'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ChatModelToJson(_$_ChatModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'senderName': instance.senderName,
      'profileImage': instance.profileImage,
      'msg': instance.msg,
      'time': instance.time,
      'isPinned': instance.isPinned,
      'isRead': instance.isRead,
      'isMute': instance.isMute,
      'isArchived': instance.isArchived,
    };
