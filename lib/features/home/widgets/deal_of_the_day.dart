import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            'Deal of the Day',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Image.network(
          "https://images.unsplash.com/photo-1695562768215-06c1c889b014?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=800&q=60",
          fit: BoxFit.fitHeight,
          height: 235,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$100',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text('Nishchay',
              maxLines: 2, overflow: TextOverflow.ellipsis),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "https://images.unsplash.com/photo-1695562768215-06c1c889b014?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=800&q=60",
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                  "https://images.unsplash.com/photo-1695562768215-06c1c889b014?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=800&q=60",
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100),
              Image.network(
                  "https://images.unsplash.com/photo-1695562768215-06c1c889b014?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=800&q=60",
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100),
              Image.network(
                  "https://images.unsplash.com/photo-1695562768215-06c1c889b014?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=800&q=60",
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'See All Deals',
            style: TextStyle(color: Colors.cyan[800]),
          ),
        )
      ],
    );
  }
}
