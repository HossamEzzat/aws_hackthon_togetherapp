
import 'package:flutter/material.dart';
import '../../constant.dart';
import 'details/body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body:  const Boody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.all(20),
        iconSize: 30,
        onPressed: () {},
        icon: Icon(Icons.notifications),
      ),
    );
  }
}


