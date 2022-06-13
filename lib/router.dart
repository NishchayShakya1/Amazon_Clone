import 'package:amazon_full_stack/common/widgets/bottom_bar.dart';
import 'package:amazon_full_stack/features/auth/screens/auth_screen.dart';
import 'package:amazon_full_stack/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';



Route<dynamic> generateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case AuthScreen.routeName:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const AuthScreen());
      
      case HomeScreen.routeName:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const HomeScreen());

      case BottomBar.routeName:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const BottomBar());

      default:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Screen does not exist'),
            ),
          ));
    }
}