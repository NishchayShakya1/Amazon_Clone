import 'package:amazon_clone/constants/global_variable.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  static const String routename = '/actual-home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 42;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        items: [
          BottomNavigationBarItem(icon: Container(
            width: bottomBarWidth,
            decoration: BoxDecoration(
              border: Border(top: BorderSide(
                color: _page == 0? GlobalVariables.selectedNavBarColor : GlobalVariables.backgroundColor,
                width: bottomBarBorderWidth
              ))
            ) ,
            child: const Icon(Icons.home_outlined),
            ),
            label: ''),

            BottomNavigationBarItem(icon: Container(
            width: bottomBarWidth,
            decoration: BoxDecoration(
              border: Border(top: BorderSide(
                color: _page == 1? GlobalVariables.selectedNavBarColor : GlobalVariables.backgroundColor,
                width: bottomBarBorderWidth
              ))
            ) ,
            child: const Icon(Icons.person_outline_outlined),
            ),
            label: ''),

            BottomNavigationBarItem(icon: Container(
            width: bottomBarWidth,
            decoration: BoxDecoration(
              border: Border(top: BorderSide(
                color: _page == 2? GlobalVariables.selectedNavBarColor : GlobalVariables.backgroundColor,
                width: bottomBarBorderWidth
              ))
            ) ,
            child: const Icon(Icons.shopping_cart_checkout_outlined),
            ),
            label: ''),

        ],
        currentIndex: _page,
      selectedItemColor: GlobalVariables.selectedNavBarColor,
      unselectedItemColor: GlobalVariables.selectedNavBarColor,),
    );
  }
}