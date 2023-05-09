import 'package:flutter/material.dart';
import 'package:hadantty/Screens/IncubationHomeScreen/BabyInformation.dart';
import 'package:hadantty/Screens/IncubationHomeScreen/BookingScreen.dart';

class IncubationBeds extends StatelessWidget {
  const IncubationBeds({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 75),
            child: Center(
              child: Text(
                "Beds",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color(0xff008f9a)),
              ),
            ),
          ),
          Container(
            child: Wrap(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BabyInformationScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    height: 100,
                    width: 95,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffee3e54)),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          offset: Offset(-5, 0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Baby Name",
                        style: TextStyle(color: Color(0xffee3e54)),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BabyInformationScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    height: 100,
                    width: 95,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffee3e54)),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          offset: Offset(-5, 0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Baby Name",
                        style: TextStyle(color: Color(0xffee3e54)),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BabyInformationScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    height: 100,
                    width: 95,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffee3e54)),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          offset: Offset(-5, 0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Baby Name",
                        style: TextStyle(color: Color(0xffee3e54)),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BabyInformationScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    height: 100,
                    width: 95,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffee3e54)),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          offset: Offset(-5, 0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Baby Name",
                        style: TextStyle(color: Color(0xffee3e54)),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BabyInformationScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    height: 100,
                    width: 95,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffee3e54)),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          offset: Offset(-5, 0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Baby Name",
                        style: TextStyle(color: Color(0xffee3e54)),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookingScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    height: 100,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff93bc39),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          offset: Offset(-5, 0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Available",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BabyInformationScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    height: 100,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffee3e54),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          offset: Offset(-5, 0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Unavailable",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BabyInformationScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    height: 100,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffee3e54),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          offset: Offset(-5, 0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Unavailable",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
