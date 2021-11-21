import 'package:flutter/material.dart';

import 'package:whatsapp_clone/config/auto_route.dart';

import 'package:whatsapp_clone/controllers/theme_controller.dart';
import 'package:whatsapp_clone/pods.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


 final appRouter = AppRouter();
 
class AppView extends ConsumerWidget {
  const AppView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    


    return MaterialApp.router(
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      theme: ThemeController.lightTheme,
      darkTheme: ThemeController.darkTheme,
      themeMode: ref.watch(themeController),
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
      
    );
  }
}
