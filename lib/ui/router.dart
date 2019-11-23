import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:boilerplate_provider_v1/core/constants/namedRoute.dart';

import 'views/home_view.dart';
import 'views/login_view.dart';

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
