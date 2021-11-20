
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/chat_view/chat_view.dart';
import 'package:whatsapp_clone/views/main/main_view.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class Routes {
  static const chatView = '/chat_view';
  static const userInfo = '/userInfo';
  static const initial = '/';

  static Route? onGenerateRoute(RouteSettings settings) {
  
    switch (settings.name) {
      
      case chatView:
        return MaterialPageRoute(builder: (_) => const ChatView());
    }
  }
}
