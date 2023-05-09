import 'package:flutter/material.dart';
import 'package:hadantty/Screens/SignUpScreen/SignUpScreen.dart';

import '../IncubationSignUp/IncubationRegister.dart';

class DecisionScreen extends StatelessWidget {
  const DecisionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:  BoxDecoration (
          gradient:  LinearGradient (
            begin:  Alignment(1, -1.026),
            end:  Alignment(-1, 1),
            colors:  <Color>[Color(0xff00ffef), Color(0xff008f9a)],
            stops:  <double>[0, 1],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sign up as',
            style: TextStyle(
                fontSize:  24,
                fontWeight:  FontWeight.w700,
                height:  1.5,
                color:  Color(0xffffffff),
            ),
            ),
            SizedBox(height: size.height*0.15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (Context) {
                              return SignUpScreen();
                            }));
                      },
                      child: Image.asset(
                        "assets/images/person.png",
                        width: size.width * 0.3,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (Context) {
                              return SignUpScreen();
                            }));
                      },
                      child: Text('Person',style: TextStyle(
                        fontSize:  13,
                        fontWeight:  FontWeight.w500,
                        height:  1.5,
                        color:  Color(0xffffffff),
                      ),),
                    )

                  ],
                ),
                SizedBox(width: size.width*0.1,),
                Column(
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (Context) {
                              return IncubationRegister();
                            }));
                      } ,
                      child: Image.asset(
                        "assets/images/incubation.png",
                        width: size.width * 0.3,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (Context) {
                              return IncubationRegister();
                            }));
                      },
                      child: Text('Incubation',style: TextStyle(
                        fontSize:  13,
                        fontWeight:  FontWeight.w500,
                        height:  1.5,
                        color:  Color(0xffffffff),
                      ),),
                    )
                  ],
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
