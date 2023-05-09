import 'package:flutter/material.dart';

import 'IncubationScreen.dart';

class PersonHomeScreen extends StatelessWidget {
  const PersonHomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff008f9a),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                      labelStyle: TextStyle(
                          color: Color(0xffd9d9d9)
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 0.8),
                      ),
                      hintText: 'Find Incubation',
                      hintStyle: TextStyle(
                        color: Color(0xffd9d9d9),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xffd9d9d9),
                        size: 30,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear,color: Color(0xffd9d9d9),),
                        onPressed: (){},
                      )
                  ),
                ),
              ),
              Container(
                height: 900,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight:Radius.circular(20) ,topLeft:Radius.circular(20) ),
                  color: Colors.white,
                  boxShadow:  [
                    BoxShadow(
                      color:  Color(0x19000000),
                      offset:  Offset(0, -10),
                      blurRadius:  10,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:
                  Column(
                    children: [
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // children: [
                  //   Container(
                  //     margin: EdgeInsets.symmetric(
                  //         horizontal: 5, vertical: 20),
                  //     height: double.infinity,
                  //     width: 85,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(15),
                  //       border:  Border.all(color :Color(0xffd9d9d9)),
                  //       color: Colors.white,
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Color(0x19000000),
                  //           offset: Offset(0, 4),
                  //           blurRadius: 2,
                  //         ),
                  //       ],
                  //     ),
                  //     child: Center(
                  //       child: Text(
                  //         "Type1",
                  //           style:  TextStyle(
                  //             fontSize:  20,
                  //             fontWeight:  FontWeight.w700,
                  //             height:  1.5,
                  //             color:  Color(0xffd9d9d9),
                  //           ),
                  //       ),
                  //     ),
                  //   ),
                  //   Container(
                  //     margin: EdgeInsets.symmetric(
                  //         horizontal: 5, vertical: 20),
                  //     height: double.infinity,
                  //     width: 85,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(15),
                  //       border:  Border.all(color :Color(0xffd9d9d9)),
                  //       color: Colors.white,
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Color(0x19000000),
                  //           offset: Offset(0, 4),
                  //           blurRadius: 2,
                  //         ),
                  //       ],
                  //     ),
                  //     child: Center(
                  //       child: Text(
                  //         "Type2",
                  //         style:  TextStyle(
                  //           fontSize:  20,
                  //           fontWeight:  FontWeight.w700,
                  //           height:  1.5,
                  //           color:  Color(0xffd9d9d9),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  //   Container(
                  //     margin: EdgeInsets.symmetric(
                  //         horizontal: 5, vertical: 20),
                  //     height: double.infinity,
                  //     width: 85,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(15),
                  //       border:  Border.all(color :Color(0xffd9d9d9)),
                  //       color: Colors.white,
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Color(0x19000000),
                  //           offset: Offset(0, 4),
                  //           blurRadius: 2,
                  //         ),
                  //       ],
                  //     ),
                  //     child: Center(
                  //       child: Text(
                  //         "Type3",
                  //         style:  TextStyle(
                  //           fontSize:  20,
                  //           fontWeight:  FontWeight.w700,
                  //           height:  1.5,
                  //           color:  Color(0xffd9d9d9),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  //   Container(
                  //     margin: EdgeInsets.symmetric(
                  //         horizontal: 5, vertical: 20),
                  //     height: double.infinity,
                  //     width: 85,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(15),
                  //       border:  Border.all(color :Color(0xffd9d9d9)),
                  //       color: Colors.white,
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Color(0x19000000),
                  //           offset: Offset(0, 4),
                  //           blurRadius: 2,
                  //         ),
                  //       ],
                  //     ),
                  //     child: Center(
                  //       child: Text(
                  //         "Type4",
                  //         style:  TextStyle(
                  //           fontSize:  20,
                  //           fontWeight:  FontWeight.w700,
                  //           height:  1.5,
                  //           color:  Color(0xffd9d9d9),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ],
                  //     ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => IncubationScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Color(0xffd9d9d9))
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffd9d9d9)),
                                ),
                                child: Image.asset('assets/images/incubation2.png',
                                  fit: BoxFit.cover,
                                )
                              ),
                              SizedBox(width: 20.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Incubation Name ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      height: 1.5,
                                        color:  Color(0xff008f9a)
                                    ),),
                                  Text(
                                    '',
                                    style: TextStyle(
                                      color:Colors.grey,
                                    ),),
                                  Text(
                                    '20 Km Away',
                                    style: TextStyle(
                                      color:Colors.grey,
                                    ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => IncubationScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Color(0xffd9d9d9))
                          ),
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xffd9d9d9)),
                                  ),
                                  child: Image.asset('assets/images/incubation2.png',
                                    fit: BoxFit.cover,
                                  )
                              ),
                              SizedBox(width: 20.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Incubation Name ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        height: 1.5,
                                        color:  Color(0xff008f9a)
                                    ),),
                                  Text(
                                    '',
                                    style: TextStyle(
                                      color:Colors.grey,
                                    ),),
                                  Text(
                                    '20 Km Away',
                                    style: TextStyle(
                                      color:Colors.grey,
                                    ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => IncubationScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Color(0xffd9d9d9))
                          ),
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xffd9d9d9)),
                                  ),
                                  child: Image.asset('assets/images/incubation2.png',
                                    fit: BoxFit.cover,
                                  )
                              ),
                              SizedBox(width: 20.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Incubation Name ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        height: 1.5,
                                        color:  Color(0xff008f9a)
                                    ),),
                                  Text(
                                    '',
                                    style: TextStyle(
                                      color:Colors.grey,
                                    ),),
                                  Text(
                                    '20 Km Away',
                                    style: TextStyle(
                                      color:Colors.grey,
                                    ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => IncubationScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Color(0xffd9d9d9))
                          ),
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xffd9d9d9)),
                                  ),
                                  child: Image.asset('assets/images/incubation2.png',
                                    fit: BoxFit.cover,
                                  )
                              ),
                              SizedBox(width: 20.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Incubation Name ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        height: 1.5,
                                        color:  Color(0xff008f9a)
                                    ),),
                                  Text(
                                    '',
                                    style: TextStyle(
                                      color:Colors.grey,
                                    ),),
                                  Text(
                                    '20 Km Away',
                                    style: TextStyle(
                                      color:Colors.grey,
                                    ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => IncubationScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Color(0xffd9d9d9))
                          ),
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xffd9d9d9)),
                                  ),
                                  child: Image.asset('assets/images/incubation2.png',
                                    fit: BoxFit.cover,
                                  )
                              ),
                              SizedBox(width: 20.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Incubation Name ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        height: 1.5,
                                        color:  Color(0xff008f9a)
                                    ),),
                                  Text(
                                    '',
                                    style: TextStyle(
                                      color:Colors.grey,
                                    ),),
                                  Text(
                                    '20 Km Away',
                                    style: TextStyle(
                                      color:Colors.grey,
                                    ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => IncubationScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Color(0xffd9d9d9))
                          ),
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xffd9d9d9)),
                                  ),
                                  child: Image.asset('assets/images/incubation2.png',
                                    fit: BoxFit.cover,
                                  )
                              ),
                              SizedBox(width: 20.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Incubation Name ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        height: 1.5,
                                        color:  Color(0xff008f9a)
                                    ),),
                                  Text(
                                    '',
                                    style: TextStyle(
                                      color:Colors.grey,
                                    ),),
                                  Text(
                                    '20 Km Away',
                                    style: TextStyle(
                                      color:Colors.grey,
                                    ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
