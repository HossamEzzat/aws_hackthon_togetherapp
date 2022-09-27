import 'package:flutter/material.dart';

import '../../../constant.dart';


class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key? key,
    required this.size, required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: kDefaultPadding,
        top: kDefaultPadding/2,
        bottom: kDefaultPadding/2,
      ),
      width: size.width*0.8,
      height: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:  DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),

          )
      ),
    );
  }
}