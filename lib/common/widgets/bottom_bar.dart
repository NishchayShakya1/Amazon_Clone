import 'package:amazon_full_stack/constants/global_variables.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(currentIndex: _page, selectedItemColor: GlobalVariables.selectedNavBarColor,
      unselectedItemColor: GlobalVariables.unselectedNavBarColor,
      backgroundColor: GlobalVariables.backgroundColor,
      iconSize: 28,
      items: [BottomNavigationBarItem(icon: Container(
        width: bottomBarWidth,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(
            color: _page == 0? GlobalVariables.selectedNavBarColor : GlobalVariables.backgroundColor,
            width: bottomBarBorderWidth,
          ))
        ),

        child: const Icon(Icons.home_outlined),
        ),
        ),
        BottomNavigationBarItem(icon: Container(
        width: bottomBarWidth,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(
            color: _page == 1? GlobalVariables.selectedNavBarColor : GlobalVariables.backgroundColor,
            width: bottomBarBorderWidth,
          ))
        ),

        child: const Icon(Icons.person_outline_outlined),
        )
        ),
        BottomNavigationBarItem(icon: Container(
        width: bottomBarWidth,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(
            color: _page == 2? GlobalVariables.selectedNavBarColor : GlobalVariables.backgroundColor,
            width: bottomBarBorderWidth,
          ))
        ),

        child: const Icon(Icons.home_outlined),
        )
        ),
        ],
      ),
    );
  }
}