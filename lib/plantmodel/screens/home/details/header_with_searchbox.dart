import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../useraddplant.dart';
import '../../../constant.dart';

class HeaderEithSearch extends StatelessWidget {
  const HeaderEithSearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding*2.5),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: kDefaultPadding, right: kDefaultPadding,bottom:36+kDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            child: Row(
              children: [
                Text(
                  "Hi👋 Click to add plant",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
               IconButton(
                 iconSize: 30,
                   onPressed: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const UserAddPlant()),
                     );
                   },
                   icon: Icon(
                     Icons.add,
                   ))
              ],
            ),
          ),
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
              ))
        ],
      ),
    );
  }
}
