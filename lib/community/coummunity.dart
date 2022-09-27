import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../1.dart';
import '../plantmodel/constant.dart';

class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Positioned(
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
                          SvgPicture.asset("assets/icons/search.svg"),
                        ],
                      ),
                    )),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextButton(
                      onPressed: (){

                      },
                      child: Text(
                        "Community",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor:Colors.grey,
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextButton(
                      onPressed: (){

                      },
                      child: Text(
                        "Tips",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor:Colors.grey,
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextButton(
                      onPressed: (){

                      },
                      child: Text(
                        "Events",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor:Colors.grey,
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                      ),

                    ),
                  ),
                ],
              ),
              const Divider(
                height: 22,
                thickness: 3,
                indent: 20,
                endIndent: 20,
                color: Colors.black54,
              ),
              FirstFeedUI(),
              FirstFeedUI(),
              FirstFeedUI(),
              FirstFeedUI(),
            ],
          ),
        ),

      ),
    );
  }
}
