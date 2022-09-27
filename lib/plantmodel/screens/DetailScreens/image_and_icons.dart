import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../constant.dart';
import 'detailwallpaper.dart';
import 'iconcard.dart';

class ImageAndIcon extends StatelessWidget {
  const ImageAndIcon({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding*3),
      child: SizedBox(
        height: size.height*0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding*3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon:SvgPicture.asset("assets/icons/back_arrow.svg") ,

                      ),
                    ),
                    const Spacer(),
                    const IconCard(image_card: "assets/icons/sun.svg",),
                    const IconCard(image_card: "assets/icons/icon_2.svg",),
                    const IconCard(image_card: "assets/icons/icon_3.svg",),
                    const IconCard(image_card: "assets/icons/icon_4.svg",),

                  ],
                ),
              ),
            ),
            const DetailWallPaper(detailwall: "assets/images/img_main.png",),

          ],
        ),
      ),
    );
  }
}