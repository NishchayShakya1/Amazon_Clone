import 'package:amazon_clone/constants/global_variable.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImage extends StatefulWidget {
  const CarouselImage({super.key});

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: GlobalVariables.carouselImages.map((i) {
          return Builder(builder: (BuildContext context) {
            return Image.network(
              i,
              fit: BoxFit.cover,
              height: 200,
            );
          });
        }).toList(),
        options: CarouselOptions(viewportFraction: 1, height: 200));
  }
}
