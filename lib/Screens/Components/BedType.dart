import 'package:flutter/material.dart';

class BedType extends StatelessWidget {
  const BedType({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Center(
        child: ExpansionTile(
          childrenPadding: EdgeInsets.all(10),
          title: Text('Type of the bed'),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Number of beds",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        color: Color(0xffa3a3a3),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Expanded(
                      child: Container(
                        margin:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        padding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0, 2),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: TextFormField(
                            validator: (data) {
                              if (data.isEmpty) return 'Field is required';
                            },
                            decoration: InputDecoration(
                                hintText: '0', border: InputBorder.none)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height*0.015,),
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30,vertical: 10 ),
                          child: Text(
                            'available',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              color: Color(0xffa3a3a3),
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffd9d9d9)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x0c000000),
                                offset: Offset(0, 2),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30,vertical: 10),
                          child: Text(
                            'unavailable',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              color: Color(0xffa3a3a3),
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffd9d9d9)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x0c000000),
                                offset: Offset(0, 2),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height*0.015,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Cost per day",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        color: Color(0xffa3a3a3),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),

                    Expanded(
                      child: Container(
                        margin:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        padding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0, 2),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: TextFormField(
                            validator: (data) {
                              if (data.isEmpty) return 'Field is required';
                            },
                            decoration: InputDecoration(
                              hintText: '0', border: InputBorder.none,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            )

          ],
        ),
      ),
      decoration: BoxDecoration(
        border:  Border.all(color: Color(0xffd9d9d9)),
        color:  Color(0xffffffff),
        borderRadius:  BorderRadius.circular(20),
        boxShadow:  [
          BoxShadow(
            color:  Color(0x0c000000),
            offset:  Offset(0, 2),
            blurRadius:  2,
          ),
        ],
      ),
    );
  }
}
