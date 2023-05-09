import 'dart:async';
import 'package:flutter/material.dart';
import '../OnboardingScreen/onboardingScreen1.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({Key key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => OnBoardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration (
              gradient:  LinearGradient (
                begin:  Alignment(1, -1.026),
                end:  Alignment(-1, 1),
                colors:  <Color>[Color(0xff00ffef), Color(0xff008f9a)],
                stops:  <double>[0, 1],
              ),),
          // color: Color(0xff6f35a5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Logo.png',
                height: 200,
                width: 200,
              ),
            ],
          ),
        ));
  }
}
