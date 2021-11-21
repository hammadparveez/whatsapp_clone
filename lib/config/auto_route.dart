import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/views/chat_view/chat_view.dart';
import 'package:whatsapp_clone/views/main/main_view.dart';

part 'auto_route.gr.dart';

@MaterialAutoRouter(routes: [
  
  AutoRoute(initial: true, page: MainView),
  AutoRoute(page: ChatView),
],)
class AppRouter extends _$AppRouter {}
