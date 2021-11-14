import 'package:flutter/material.dart';
import 'package:whatsapp_clone/controllers/theme_controller.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeController.lightTheme,
      darkTheme: ThemeController.darkTheme,
      //themeMode: ThemeController().themeMode,
    );
  }
}
