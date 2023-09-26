import 'package:amazon_clone/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddressBox extends StatelessWidget {
  const AddressBox({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    final String fullName = user.name.toString();
    var name = fullName.split(' ');
    return Container(
      height: 40,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 114, 226, 221),
        Color.fromARGB(255, 162, 236, 221)
      ], stops: [
        0.5,
        1.0
      ])),
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        
        children: [
          const Icon(
            Icons.location_on_outlined,
            size: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text('Delivery to ${name[0]} - ${user.address}',
              style: const TextStyle(
                fontWeight: FontWeight.w200
              ),
              overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 5, top: 2, right: 10),
          child: Icon(Icons.arrow_drop_down_outlined, size: 18,),
          )
        ],
      ),
    );
  }
}
