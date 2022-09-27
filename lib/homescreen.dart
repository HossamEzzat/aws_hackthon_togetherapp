import 'package:awshackthon_together/plantmodel/screens/home/home_screen.dart';
import 'package:awshackthon_together/pollution/pollutionPacker.dart';
import 'package:awshackthon_together/profile.dart';
import 'package:flutter/material.dart';

import 'community/coummunity.dart';
class MainHomeScreen extends StatefulWidget {
  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int currentIndex = 0;


  List<Widget> screens = [
    HomeScreen(),
    PollutionScanner(),
    Community(),
    profile(),


  ];

  List<String> titles = ["Plant", "Report", "Community","Profile"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xffE7F6F2),
        currentIndex: currentIndex,
        onTap: (index) {
           setState(() {
                currentIndex = index;
              });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.settings_overscan), label: "Plant",),
          BottomNavigationBarItem(
              icon: Icon(Icons.report), label: "Report"),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_comment), label: "Community"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
