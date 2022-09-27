import 'package:flutter/material.dart';

class FirstFeedUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Container(
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(140)),
                  height: 58,
                  width: 60,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: 78,
                          width: 74,
                          margin: const EdgeInsets.only(
                              left: 0.0, right: 0, top: 0, bottom: 0),
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(140)),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/my-plants.png',
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 13),
                    child: Text(
                      'Hossam Ezzat',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, top: 13),
                    child: Text(
                      '8:20',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '29/7/2022',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      ),
                  Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      ),
                  Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      ),
                ],
              ),
            ]),

          ],
        ),
        Column(
          children: [
            Container(

              margin: EdgeInsets.all(20),
              child: Text(
               """ Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Quis suspendisse id nisl blandit rutrum viverra quam.\n Mauris ultrices quis praesent dictumst praesent.\n Ornare amet quisque pretium euismod ipsum est.\n Praesent placerat amet, dis dignissim facilisis.\n Nunc viverra fusce ut vitae, proin.
               """
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset("assets/comm.png",height:50,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Image.asset("assets/10.png",height:50,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/share.png",height:50,),
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
          ],
        )


      ],
    );
  }
}