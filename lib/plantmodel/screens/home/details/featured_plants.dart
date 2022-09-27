import 'package:flutter/material.dart';

import 'featureplantcard.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(size: size, image: "assets/images/bottom_img_1.png",),
          FeaturedPlantCard(size: size, image: "assets/images/bottom_img_2.png",),
          FeaturedPlantCard(size: size, image: "assets/images/bottom_img_1.png",),
        ],
      ),
    );
  }
}