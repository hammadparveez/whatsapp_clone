import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatsapp_clone/config/routes.dart';
import 'package:whatsapp_clone/controllers/theme_controller.dart';
import 'package:whatsapp_clone/pods.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/views/chat_view/chat_view.dart';
import 'package:whatsapp_clone/views/main/main_view.dart';

class AppView extends ConsumerStatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends ConsumerState<AppView> {
  Future<SharedPreferences>? perfs;
  @override
  void initState() {
    super.initState();
    perfs = SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      theme: ThemeController.lightTheme,
      darkTheme: ThemeController.darkTheme,
      themeMode: ref.watch(themeController),
      onGenerateRoute: Routes.onGenerateRoute,
      //initialRoute: snapshot.data!.get('last_route') as String,
      routes: {
        Routes.mainView: (_) => MainView(),
      
      },
      navigatorKey: navigatorKey,
     
      //home: MainView(),
      navigatorObservers: [RestorableRouteObserver()],
      //home: ChatView(),
    );
    // return FutureBuilder<SharedPreferences>(
    //     future: perfs,
    //     builder: (context, snapshot) {
    //       if (snapshot.data != null) {
    //         print("Show ${snapshot.data!.get('last_route')}");

    //       }
    //       return SizedBox();
    //     });
  }
}

class RestorableRouteObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    // TODO: implement didPop
    print("POP ${route}");
  }

  @override
  void didPush(Route route, Route? previousRoute) async {
    print("Push ${route.settings.name}");
    //final perfs = await SharedPreferences.getInstance();
    //perfs.setString('last_route', route.settings.name!);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    // TODO: implement didRemove
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    // TODO: implement didReplace
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    // TODO: implement didStartUserGesture
  }

  @override
  void didStopUserGesture() {
    // TODO: implement didStopUserGesture
  }
}
