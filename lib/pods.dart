import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/controllers/theme_controller.dart';

final themeController = StateNotifierProvider<ThemeController, ThemeMode>((ref) => ThemeController());
