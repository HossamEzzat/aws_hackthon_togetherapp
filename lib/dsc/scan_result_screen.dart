

import 'package:awshackthon_together/dsc/theme-util.dart';
import 'package:flutter/material.dart';
import 'my_plants_screen.dart';

class ScanResultScreen extends StatefulWidget{
  const ScanResultScreen({super.key});


  @override
  State<StatefulWidget> createState() {
    return _ScanResultScreenState();
  }
}

class _ScanResultScreenState extends State<ScanResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Image(
          image: AssetImage("assets/my-plant-add.png"),
        ),
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => MyPlantsScreen())
          );
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black54, size: 32,
                        ),
                      onTap: (){
                          Navigator.of(context).pop();
                      },
                    ),
                    Row(
                      children: [
                        const Image(image: AssetImage("assets/seeds.png"), width: 42,),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: const [
                              Text("Seeds")
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Rubber Plant",
                      style:TextStyle(fontSize: 28),
                    ),
                    Text(
                        "Fig Tree",
                      style: TextStyle(fontSize: 18, color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left:10),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top:10, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Plant Type", style: TextStyle(fontSize: 16, color: Colors.grey.shade700),),
                                  const Text("Tree", style: TextStyle(fontSize: 24)),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:10, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Genus", style: TextStyle(fontSize: 16, color: Colors.grey.shade700),),
                                  Text("Ficus", style: TextStyle(fontSize: 24)),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:10, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Plant Type", style: TextStyle(fontSize: 16, color: Colors.grey.shade700),),
                                  const Text("Tree", style: TextStyle(fontSize: 24)),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Family", style: TextStyle(fontSize: 16, color: Colors.grey.shade700)),
                                  const Text("Marceau", style: TextStyle(fontSize: 24),),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Class", style: TextStyle(fontSize: 16, color: Colors.grey.shade700)),
                                  const Text("Magnoliopsida", style: TextStyle(fontSize: 24),),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bloom Time", style: TextStyle(fontSize: 16, color: Colors.grey.shade700)),
                                  Text("Winter", style: TextStyle(fontSize: 24),),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Lifespan", style: TextStyle(fontSize: 16, color: Colors.grey.shade700)),
                                  Text("Perennial", style: TextStyle(fontSize: 24),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          child: const Image(
                            image: AssetImage("assets/plant-back.png"),
                            width: 220,
                            height: 410,
                          ),
                        ),
                        Container(
                          child: Image(
                            image: AssetImage("assets/rubber-plant.png"),
                            height: 436, width: 220,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Description", style: TextStyle(fontSize: 24),),
                        Container(
                          width: 125,
                          margin: const EdgeInsets.only(bottom: 10),
                          child: const Divider(
                            color: ThemeUtil.AccendColor,
                            height: 5, thickness: 5,
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      overflow: TextOverflow.fade,
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(color: Colors.black54),
                            text: "Rubber plant (Ficus elastica) is a large tree with wide, "
                                "oval glossy leaves. Its milky white latex was used for "
                                "making rubber before Para rubber tree came into use, "
                                "hence the name. Rubber plant is an ornamental species, "
                                "often grown as a houseplant in cooler climents.",
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}