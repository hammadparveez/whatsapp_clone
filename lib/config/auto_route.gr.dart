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
    MainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MainView());
    },
    ChatRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ChatView());
    },
    AccountDetailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AccountDetailView());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(MainRoute.name, path: '/'),
        RouteConfig(ChatRoute.name, path: '/chat-view'),
        RouteConfig(AccountDetailRoute.name, path: '/account-detail-view')
      ];
}

/// generated route for [MainView]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute() : super(name, path: '/');

  static const String name = 'MainRoute';
}

/// generated route for [ChatView]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute() : super(name, path: '/chat-view');

  static const String name = 'ChatRoute';
}

/// generated route for [AccountDetailView]
class AccountDetailRoute extends PageRouteInfo<void> {
  const AccountDetailRoute() : super(name, path: '/account-detail-view');

  static const String name = 'AccountDetailRoute';
}
