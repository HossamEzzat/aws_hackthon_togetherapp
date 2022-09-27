

import 'package:awshackthon_together/dsc/theme-util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_plants_view.dart';


class MyPlantsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyPlantsScreenState();
  }
}

class _MyPlantsScreenState extends State<MyPlantsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.arrow_back_ios,size: 36,),
                        Text("My Plants", style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    Image(
                      image: AssetImage("assets/my-plants.png"),
                      width: 64,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: ThemeUtil.PrimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                    )
                ),
              ),
              Expanded(
                child: MyPlantsView(
                    [
                      MyPlantsModel(
                          title: "Alovera Plant",
                          subtitle: "Ficus elestics",
                          waterText: "Every 7-10 days",
                          waterIcon: "assets/water-drop.png",
                          footerText: "Plant Added at Oct 09 2022",
                          footerIcon: "",
                          envText: "Partial Sun",
                          envIcon: "assets/sun-rise.png",
                          plantImage: "assets/alovera.png"
                      ),
                      MyPlantsModel()
                        ..plantImage = "assets/rubber.png"
                        ..title = "Rubber Plant"
                        ..subtitle = "Ficus elestics"
                        ..envIcon = "assets/sun-rise.png"
                        ..envText = "Partial Sun"
                        ..waterText = "Every 7-10 days"
                        ..waterIcon = "assets/water-drop.png"
                        ..footerText = "Plant added at Sep 25 2022"
                        ..footerIcon = "assets/icons/my-plant-add.png",
                      MyPlantsModel(
                          plantImage: "assets/alovera.png",
                          envIcon: "assets/sun-rise.png",
                          envText: "Partial Sun",
                          footerIcon: "assets/my-plant-add.png",
                          footerText: "Plant added at Sep 24 2022",
                          subtitle: "Ficus elestics",
                          title: "Alovera Plant",
                          waterIcon: "assets/water-drop.png",
                          waterText: "Plant added at Sep 24 2022"
                      ),
                      MyPlantsModel(
                          plantImage: "assets/alovera.png",
                          envIcon: "assets/sun-rise.png",
                          envText: "Partial Sun",
                          footerIcon: "assets/my-plant-add.png",
                          footerText: "Plant added at Sep 24 2022",
                          subtitle: "Ficus elestics",
                          title: "Alovera Plant",
                          waterIcon: "assets/water-drop.png",
                          waterText: "Plant added at Sep 24 2022"
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}