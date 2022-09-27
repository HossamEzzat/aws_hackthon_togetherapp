import 'package:flutter/material.dart';



import '../../DetailScreens/details_screens.dart';
import 'recommended_plant_card.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
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
          RecommendedPlantcard(
            size: size,
            plantname: "Samantha\n",
            plantcountry: "Russia",
            price: "",
            image: "assets/images/image_1.png",
            route: const DetailsScreen(),
        ),
          RecommendedPlantcard(
            size: size,
            plantname: "Angelica\n",
            plantcountry: "Germany",
            price: "",
            image: "assets/images/image_2.png",
            route: const DetailsScreen(),

          ),
          RecommendedPlantcard(
            size: size,
            plantname: "Rosene\n",
            plantcountry: "France",
            price: "",
            image: "assets/images/image_3.png", route: const DetailsScreen(),

          ),
          RecommendedPlantcard(
            size: size,
            plantname: "Angelica\n",
            plantcountry: "Germany",
            price: "",
            image: "assets/images/image_2.png",
            route: const DetailsScreen(),
          ),
          RecommendedPlantcard(
            size: size,
            plantname: "Samantha\n",
            plantcountry: "Russia",
            price: "",
            image: "assets/images/image_1.png",
            route: const DetailsScreen(),

          ),
          RecommendedPlantcard(
            size: size,
            plantname: "Samantha\n",
            plantcountry: "France",
            price: "",
            image: "assets/images/image_3.png",
            route: const DetailsScreen(),

          ),
          RecommendedPlantcard(
            size: size,
            plantname: "Angelica\n",
            plantcountry: "Germany",
            price: "",
            image: "assets/images/image_2.png",
            route: const DetailsScreen(),

          ),
        ],
      ),
    );
  }
}
