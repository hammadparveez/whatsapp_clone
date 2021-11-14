import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/res/colors.dart';

class ThemeController extends StateNotifier<ThemeMode> {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeController() : super(ThemeMode.light);

  ThemeMode get themeMode => _themeMode;

  void switchThemeMode(ThemeMode mode) {
    _themeMode = mode;
    state = mode;
  }

  void setStatusBarColor() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: kPrimaryColor));
  }

  static ThemeData get lightTheme {
    return ThemeData(
        textTheme: const TextTheme(
            headline6:
                TextStyle(color: kWhiteColor)),
        iconTheme: const IconThemeData(color: kWhiteColor, size: 26),
        colorScheme: const ColorScheme.light(
          //onSecondary: kWhiteColor,
          //onSurface: kWhiteColor,
          //onBackground: kWhiteColor,
          //brightness: Brightness.light,
          //primaryVariant: kWhiteColor,
          //secondaryVariant: kWhiteColor,
          //surface: kWhiteColor,

          primary: kPrimaryColor,
          secondary: kSecondaryColor,
        ));
  }

  static ThemeData get darkTheme {
    return ThemeData(
        colorScheme: const ColorScheme.light(
            primary: kDarkPrimaryColor, secondary: kDarkSecondaryColor));
  }
}
