import 'package:flutter/material.dart';

import '../../constant.dart';

class DetailWallPaper extends StatelessWidget {
  const DetailWallPaper({
    Key? key, required this.detailwall,

  }) : super(key: key);

  final String detailwall;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.75,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          bottomLeft: Radius.circular(35),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 60,
            color: kPrimaryColor.withOpacity(0.6),
          )
        ],
        image:  DecorationImage(
          alignment: Alignment.centerLeft,
          fit: BoxFit.cover,
          image: AssetImage(detailwall),
        ),
      ),

    );
  }
}