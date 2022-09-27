import 'package:flutter/material.dart';

import '../../../constant.dart';

class RecommendedPlantcard extends StatelessWidget {
   RecommendedPlantcard({
    Key? key,
    required this.size, required this.plantname, required this.plantcountry, required this.price, required this.image, required this.route,
  }) : super(key: key);

  final Size size;

  final String plantname;
  final String plantcountry;
  final String price;
  final String image;

  final Widget route;







  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only
        (left: kDefaultPadding,
        top: kDefaultPadding/2,
        bottom: kDefaultPadding*2.5,

      ),
      width: size.width*0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  route),
        );
            },
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding/2),
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),bottomRight:  Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(offset: const Offset(0,10),blurRadius: 50,color: kPrimaryColor.withOpacity(0.3)),
                ],
              ),
              child: Row(
                children: [
                  RichText(text:TextSpan(
                      children: [
                        TextSpan(text: plantname.toUpperCase(),style: Theme.of(context).textTheme.button),
                        TextSpan(text: plantcountry.toUpperCase(),style: TextStyle(
                          color: Colors.red.withOpacity(0.5),
                        )),


                      ]
                  )),
                  Spacer(),
                  Text(price,style:  Theme.of(context).textTheme.button?.copyWith(color: kPrimaryColor)),
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}


