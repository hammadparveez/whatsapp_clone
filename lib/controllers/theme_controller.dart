import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/res/colors.dart';

class ThemeController extends StateNotifier<ThemeMode> {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeController([ThemeMode state = ThemeMode.light]) : super(state);

  ThemeMode get themeMode => _themeMode;

  void switchThemeMode(ThemeMode mode) {
    _themeMode = mode;
    state = mode;
  }

  static ThemeData get lightTheme {
    return ThemeData(
        colorScheme: const ColorScheme.light(
            primary: kPrimaryColor, secondary: kSecondaryColor));
  }

  static ThemeData get darkTheme {
    return ThemeData(
        colorScheme: const ColorScheme.light(
            primary: kDarkPrimaryColor, secondary: kDarkSecondaryColor));
  }
}
