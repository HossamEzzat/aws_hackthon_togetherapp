
import 'package:flutter/material.dart';
import '../../../dsc/my_plants_screen.dart';
import '../../../dsc/scan_result_screen.dart';
import '../../constant.dart';
import 'image_and_icons.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children:    [
            const ImageAndIcon(),
            const SizedBox(height: kDefaultPadding),
            Row(
              children: <Widget>[
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                     backgroundColor:  kPrimaryColor,
                    ),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  ScanResultScreen()),
                      );
                    },
                    child: const Text(
                      "More Detail",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  MyPlantsScreen()),
                      );
                    },
                    child: const Text("History"),
                  ),
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}







