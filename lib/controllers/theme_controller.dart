
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/res/colors.dart';

class ThemeController extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
 
  ThemeMode get themeMode => _themeMode;

 
  
  void switchThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(

      colorScheme:const  ColorScheme.light(primary: kPrimaryColor, secondary: kSecondaryColor)
    );
  }
   static ThemeData get darkTheme {
    return ThemeData(
      colorScheme:const  ColorScheme.light(primary: kDarkPrimaryColor, secondary: kDarkSecondaryColor)
    );
  }
}
