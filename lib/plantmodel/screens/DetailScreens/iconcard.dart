import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../constant.dart';


class IconCard extends StatelessWidget {
  const IconCard({
    Key? key, required this.image_card,

  }) : super(key: key);

  final String image_card;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height*0.03),
      padding: EdgeInsets.all(kDefaultPadding/2),
      height: 62,width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0,15),
              blurRadius: 30,
              color: kPrimaryColor.withOpacity(0.3)
          ),
          const BoxShadow(
            offset: Offset(-15,-15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: SvgPicture.asset(image_card),
    );
  }
}