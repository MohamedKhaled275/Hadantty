import 'package:flutter/material.dart';
import 'SplashIncubationSignUp.dart';

class IncubationDoctors extends StatelessWidget {
  const IncubationDoctors({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin:  EdgeInsets.fromLTRB(0,size.height*0.05 , 0, size.height*0.05),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Doctors',
                        style: TextStyle(
                          fontSize:  25,
                          fontWeight:  FontWeight.w600,
                          height:  1.5,
                          color:  Color(0xff008f9a),
                        ),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
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
                                      hintText: 'Doctor Name',
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
                                hintText: 'Phone Number',
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
                                hintText: 'Specialization',
                                hintStyle: TextStyle(color:Color(0xffd9d9d9)),

                                border: InputBorder.none)),
                      ),
                      SizedBox(height: size.height*0.01,),
                      Divider(
                        color: Colors.grey,thickness: 0.4,
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
                                      hintText: 'Doctor Name',
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
                                hintText: 'Phone Number',
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
                                hintText: 'Specialization',
                                hintStyle: TextStyle(color:Color(0xffd9d9d9)),

                                border: InputBorder.none)),
                      ),
                      SizedBox(height: size.height*0.01,),
                      Divider(
                        color: Colors.grey,thickness: 0.4,
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 150,),
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
                            return SplashIncubationSignUp() ;
                          }));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text('Next',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                          color: Color(0xffffffff),
                        )),
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
