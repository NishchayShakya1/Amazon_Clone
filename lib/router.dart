import 'package:amazon_clone/common/widgets/button_bar.dart';
import 'package:amazon_clone/features/admin/screens/admin_screens.dart';
import 'package:amazon_clone/features/auth/screens/auth_screens.dart';
import 'package:amazon_clone/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routename:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const AuthScreen());
    
    case HomeScreen.routename:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const HomeScreen());

    case BottomBar.routename:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const BottomBar());

    case AdminScreen.routename:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const AdminScreen());

    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
                body: Center(
                  child: Text('Its not you its us'),
                ),
              ));
  }
}
