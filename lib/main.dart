import 'package:flutter/material.dart';
import 'package:hadantty/Screens/IncubationHomeScreen/IncubationHomeScreen.dart';
import 'package:hadantty/Screens/PersonHome/IncubationScreen.dart';
import 'package:hadantty/Screens/SplashScreen/SplashScreen.dart';
import 'package:hadantty/Screens/PersonHome/PersonHomeScreen.dart';
import 'package:hadantty/test.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/SplashScreen',
    routes: {
      '/SplashScreen': (context) => Splashscreen(),
      '/Test': (context) => const Test(),

    },
  ));
}
