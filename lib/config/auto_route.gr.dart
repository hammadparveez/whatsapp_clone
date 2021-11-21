// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'auto_route.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    MainViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MainView());
    },
    ChatViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ChatView());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(MainViewRoute.name, path: '/'),
        RouteConfig(ChatViewRoute.name, path: '/chat-view')
      ];
}

/// generated route for [MainView]
class MainViewRoute extends PageRouteInfo<void> {
  const MainViewRoute() : super(name, path: '/');

  static const String name = 'MainViewRoute';
}

/// generated route for [ChatView]
class ChatViewRoute extends PageRouteInfo<void> {
  const ChatViewRoute() : super(name, path: '/chat-view');

  static const String name = 'ChatViewRoute';
}
