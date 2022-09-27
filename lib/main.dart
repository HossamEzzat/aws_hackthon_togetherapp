import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:awshackthon_together/homescreen.dart';
import 'package:awshackthon_together/plantmodel/screens/home/home_screen.dart';
import 'package:flutter/material.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Climate Change',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: AnimatedSplashScreen(
          duration: 4000,
          splash: Image.asset("assets/splash.png",fit: BoxFit.cover,),
          nextScreen: MainHomeScreen(),
          backgroundColor: Colors.black,
          splashIconSize: double.infinity,
          splashTransition: SplashTransition.fadeTransition,
        ),
      ),
    );
  }
}

