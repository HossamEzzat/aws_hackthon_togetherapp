

import 'package:awshackthon_together/plantmodel/screens/home/details/titlewithcustomunderline.dart';
import 'package:flutter/material.dart';


import '../../../../dsc/my_plants_screen.dart';
import '../../../constant.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key, required this.title, required this.press, required this.buttom_text,
  }) : super(key: key);
  final String title;
  final  Function  press;
  final String buttom_text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
           TitleWithCustomUnderLine(
            text: title,
          ),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(

              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
            ),

            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  MyPlantsScreen()),
              );
            },
            child:  Text(
              buttom_text,style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,

            ),
            ),

          ),
        ],
      ),
    );
  }
}