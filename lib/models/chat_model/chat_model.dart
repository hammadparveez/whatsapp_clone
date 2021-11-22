import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  const ChatModel._();
  const factory ChatModel({
    required String userId,
    required String senderName,
    required String profileImage,
    required String msg,
    required String time,
    @Default(false) bool isPinned,
    @Default(true) bool isRead,
    @Default(false) bool isMute,
    @Default(false) bool isArchived,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
