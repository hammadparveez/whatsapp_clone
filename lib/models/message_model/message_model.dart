import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const MessageModel._();
  const factory MessageModel({
required String userID,
required String messageID,
required String message,
required String time,
required bool isSent,

  }) = _MessageModel;

   factory MessageModel.fromJson(Map<String,dynamic>  json) => _$MessageModelFromJson(json);
}
