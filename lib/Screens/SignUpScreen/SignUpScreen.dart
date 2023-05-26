import 'package:flutter/material.dart';
import 'package:hadantty/Screens/LoginScreen/LoginScreen.dart';
import 'package:hadantty/Screens/PersonHome/PersonHomeScreen.dart';

import '../auth/Register/RegisterUser/registerUser.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;

    TextEditingController nameController = TextEditingController();
    TextEditingController CityController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();

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
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
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
                            controller: nameController,
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.drive_file_rename_outline,
                                  color: Color(0xffa3a3a3),
                                ),
                                hintText: 'Full Name',
                                border: InputBorder.none)),
                      ),
                    ),
                    SizedBox(width: size.width*0.02,),
                    // Expanded(
                    //   child: Container(
                    //     margin: EdgeInsets.symmetric(vertical: 5),
                    //     padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    //     width: size.width*0.4,
                    //     decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(100),
                    //       boxShadow:  [
                    //         BoxShadow(
                    //           color:  Color(0x3f000000),
                    //           offset:  Offset(0, 2),
                    //           blurRadius:  2,
                    //         ),
                    //       ],
                    //     ),
                    //
                    //     child: TextFormField(
                    //         validator: (data) {
                    //           if (data.isEmpty) return 'Field is required';
                    //         },
                    //         decoration: InputDecoration(
                    //             icon: Icon(
                    //               Icons.drive_file_rename_outline,
                    //               color: Color(0xffa3a3a3),
                    //             ),
                    //             hintText: 'Last Name',
                    //             border: InputBorder.none)),
                    //   ),
                    // ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
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
                      controller: CityController,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.location_city,
                            color: Color(0xffa3a3a3),
                          ),
                          hintText: 'City',
                          border: InputBorder.none)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
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
                      controller: emailController ,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Color(0xffa3a3a3),
                          ),
                          hintText: 'Password',
                          border: InputBorder.none)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
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
                      controller: passwordController ,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.password,
                            color: Color(0xffa3a3a3),
                          ),
                          hintText: 'Password',
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
                      onPressed: () async {
                        await RegisterUser.signupAccount(nameController.text, CityController.text,emailController.text,passwordController.text);
                            MaterialPageRoute(builder: (Context) {
                              return LoginScreen() ;
                            });
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Text('Sign Up',
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
