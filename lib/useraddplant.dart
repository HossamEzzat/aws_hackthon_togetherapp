import 'package:awshackthon_together/picker.dart';
import 'package:awshackthon_together/plantmodel/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserAddPlant extends StatelessWidget {
  const UserAddPlant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 124,right: 150),
              child: Text("Add plant",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Color(0xff0c5800),
                      fontSize: 36,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20,),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  alignment: Alignment.center,
                  margin:
                       const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.4)),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SvgPicture.asset("assets/icons/search.svg")
                    ],
                  ),
                )),
            SizedBox(height: 40,),
            Text("Don’t know what plant you currently have?"),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 20,right: 20),
              child: TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: Text(
                "Identify plant by picture",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
              ),
                style: TextButton.styleFrom(
                  backgroundColor:const Color(0xff438842),
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),

              ),
            ),
            SizedBox(height: 20,),
            Text("Need help getting a suitable plant?"),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 20,right: 20),
              child: TextButton(
                onPressed: (){},
                child: Text(
                  "Recommend me a plant",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor:const Color(0xff438842),
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
