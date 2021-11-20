import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatsapp_clone/config/routes.dart';
import 'package:whatsapp_clone/controllers/theme_controller.dart';
import 'package:whatsapp_clone/pods.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:whatsapp_clone/views/main/main_view.dart';

class AppView extends ConsumerWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      theme: ThemeController.lightTheme,
      darkTheme: ThemeController.darkTheme,
      themeMode: ref.watch(themeController),
      onGenerateRoute: Routes.onGenerateRoute,
      routes: {Routes.initial: (_) => const MainView()},
      navigatorKey: navigatorKey,
    );
  }
}
