import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/controllers/emoji_visiblity_controller.dart';
import 'package:whatsapp_clone/controllers/custom_appbar_update_controller.dart';
import 'package:whatsapp_clone/controllers/chat_controller.dart';
import 'package:whatsapp_clone/controllers/theme_controller.dart';

//Theme Controller
final themeController = StateNotifierProvider<ThemeController, ThemeMode>(
    (ref) => ThemeController());
//ApBar Controller
final appbarUpdateController =
    StateNotifierProvider<SecondaryAppBarVisiblityController, bool>(
        (ref) => SecondaryAppBarVisiblityController());
//Chat(List Of Messages) controller
final chatController = ChangeNotifierProvider((ref) => ChatController());
final userChatController = ChangeNotifierProvider((ref) => UserChatController());

//Message Controller
final messageController = ChangeNotifierProvider((ref) => MessageController());

//Emoji Controller
final emojiVisiblityController =
    StateNotifierProvider<EmojiVisiblityController, bool>((ref) {
  return EmojiVisiblityController(ref.read(messageController).messageFieldNode);
});
