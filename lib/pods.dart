import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/controllers/emoji_visiblity_controller.dart';
import 'package:whatsapp_clone/controllers/custom_appbar_update_controller.dart';
import 'package:whatsapp_clone/controllers/message_controller.dart';
import 'package:whatsapp_clone/controllers/theme_controller.dart';

final themeController = StateNotifierProvider<ThemeController, ThemeMode>((ref) => ThemeController());
final appbarUpdateController = StateNotifierProvider<SecondaryAppBarVisiblityController, bool>((ref) => SecondaryAppBarVisiblityController());
final messageController = ChangeNotifierProvider((ref) => MessageController());
final emojiVisiblityController = ChangeNotifierProvider((ref) => EmojiVisiblityController());

