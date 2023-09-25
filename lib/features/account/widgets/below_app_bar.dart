import 'package:amazon_clone/constants/global_variable.dart';
import 'package:amazon_clone/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BelowAppBar extends StatelessWidget {
  const BelowAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    final String fullName = user.name.toString();
    var name = fullName.split(' ');

    return Container(
      decoration: const BoxDecoration(
        gradient: GlobalVariables.appBarGradient,
      ),
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(
                  text: 'Hello, ',
                  style: const TextStyle(fontSize: 22, color: Colors.black),
                  children: [
                TextSpan(
                    text: name[0],
                    style: const TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w600))
              ])),
        ],
      ),
    );
  }
}
