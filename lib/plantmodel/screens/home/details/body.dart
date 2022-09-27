import 'package:awshackthon_together/plantmodel/screens/home/details/recommendedplants.dart';
import 'package:awshackthon_together/plantmodel/screens/home/details/titleandbutton.dart';
import 'package:flutter/material.dart';
import '../../../../dsc/my_plants_screen.dart';
import '../../../constant.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Boody extends StatelessWidget {
  const Boody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderEithSearch(size: size),
           TitleWithMoreButton(title: 'Recommended', press:(){

           }, buttom_text: 'More',
          ),
          RecommendedPlants(size: size),
          TitleWithMoreButton(title: "Featured Plants", press: (){}, buttom_text: "More"),
          FeaturedPlants(size: size),
          const SizedBox(height: kDefaultPadding,)

        ],
      ),
    );
  }
}












