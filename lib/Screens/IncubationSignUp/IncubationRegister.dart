import 'package:flutter/material.dart';
import 'package:hadantty/Screens/IncubationSignUp/IncubationBeds.dart';
import 'package:hadantty/Screens/LoginScreen/LoginScreen.dart';

class IncubationRegister extends StatelessWidget {
  const IncubationRegister({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Logo2.png",
                  width: size.width * 0.4,
                  height: size.height * 0.3,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child:
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                        width: size.width*0.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow:  [
                            BoxShadow(
                              color:  Color(0x3f000000),
                              offset:  Offset(0, 2),
                              blurRadius:  2,
                            ),
                          ],
                        ),

                        child: TextFormField(
                            validator: (data) {
                              if (data.isEmpty) return 'Field is required';
                            },
                            decoration: InputDecoration(
                                hintText: 'Incubation Name',
                                hintStyle: TextStyle(color:Color(0xffd9d9d9)),
                                border: InputBorder.none)),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow:  [
                      BoxShadow(
                        color:  Color(0x3f000000),
                        offset:  Offset(0, 2),
                        blurRadius:  2,
                      ),
                    ],
                  ),

                  child: TextFormField(
                      validator: (data) {
                        if (data.isEmpty) return 'Field is required';
                      },
                      decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color:Color(0xffd9d9d9)),
                          border: InputBorder.none)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow:  [
                      BoxShadow(
                        color:  Color(0x3f000000),
                        offset:  Offset(0, 2),
                        blurRadius:  2,
                      ),
                    ],
                  ),
                  child: TextFormField(
                      obscureText: true,
                      validator: (data) {
                        if (data.isEmpty) return 'Field is required';
                      },
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color:Color(0xffd9d9d9)),
                          border: InputBorder.none)),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.2),
                    width: double.infinity,
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin: Alignment(-1.992, 0.034),
                        end: Alignment(1, 0.034),
                        colors: <Color>[Color(0xff00ffef), Color(0xff008f9a)],
                        stops: <double>[0, 1],
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (Context) {
                              return IncubationBeds();
                            }));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Text('Next',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Color(0xffffffff),
                          )),
                    )),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You have already an account ? ',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: Color(0xffa3a3a3),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (Context) {
                                  return LoginScreen();
                                }));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                              color: Color(0xff008f9a),
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
