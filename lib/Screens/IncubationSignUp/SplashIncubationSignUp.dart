import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hadantty/Screens/IncubationHomeScreen/IncubationHomeScreen.dart';

class SplashIncubationSignUp extends StatefulWidget {
  SplashIncubationSignUp({Key key}) : super(key: key);

  @override
  State<SplashIncubationSignUp> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<SplashIncubationSignUp> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => IncubationHomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            // color: Color(0xff6f35a5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/DONE.png',
                  height: 200,
                  width: 200,
                ),

                Text('Successfully Registered',
                  style: TextStyle(
                    fontSize:  24,
                    fontWeight:  FontWeight.w700,
                    height:  1.5,
                    color:  Color(0xff008f9a),
                  ),),

                Text('You will receive a message on your email',
                  style: TextStyle(
                    fontSize:  16,
                    fontWeight:  FontWeight.w700,
                    height:  1.5,
                    color:  Color(0xffa3a3a3),
                  ),),

              ],
            ),
          ),
        ));
  }
}
