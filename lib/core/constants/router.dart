import 'package:boilerplate_provider_v1/ui/views/home_view.dart';
import 'package:boilerplate_provider_v1/ui/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoutePaths {
  static const String Login = 'login';
  static const String Home = 'home';
  static const String Post = 'post';
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => HomeView());
      case RoutePaths.Login:
        return MaterialPageRoute(builder: (_) => LoginView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
