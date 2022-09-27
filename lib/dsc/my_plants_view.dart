

import 'package:awshackthon_together/dsc/theme-util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyPlantsModel{
  String plantImage;
  String title;
  String subtitle;

  String envIcon;
  String envText;
  String waterIcon;
  String waterText;

  String footerText;
  String footerIcon;

  MyPlantsModel(
      {this.plantImage = "",
        this.title = "",
        this.subtitle = "",
        this.envText = "",
        this.envIcon = "",
        this.footerIcon = "",
        this.footerText = "",
        this.waterIcon = "",
        this.waterText = ""}
      );
}

class MyPlantsView extends StatefulWidget{

  List<MyPlantsModel> _models = [];
  MyPlantsView(List<MyPlantsModel> models, {super.key}){
    _models = models;
  }

  @override
  State<StatefulWidget> createState() {
    return _MyPlantsViewState(_models);
  }

}

class _MyPlantsViewState extends State<MyPlantsView>{

  late List<MyPlantsModel> _models;
  _MyPlantsViewState(List<MyPlantsModel> models){
    _models = models;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _models.length,
      itemBuilder: (BuildContext context, int index) {
        var model = _models[index];
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration:  BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        ThemeUtil.PrimaryColor_100,
                        ThemeUtil.PrimaryColor
                      ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage(model.plantImage),
                        width: 120, height: 120,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(model.title, style: const TextStyle(fontSize: 20),),
                                    Text(model.subtitle, style: const TextStyle(fontSize: 16),),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage(model.envIcon),
                                      width: 20, height: 20,
                                    ),
                                    Text(model.envText),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage(model.waterIcon),
                                      width: 20, height: 20,
                                    ),
                                    Text(model.waterText),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 5,
                    thickness: 2,
                    color: ThemeUtil.PrimaryColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(model.footerText),
                      const Icon(Icons.playlist_add, size: 26,)
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}