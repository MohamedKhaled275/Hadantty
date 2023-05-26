import 'package:flutter/material.dart';

import '../auth/Register/RegisterInc/AddBed.dart';

class BedType extends StatefulWidget {

   BedType({@required this.num , Key key,}) : super(key: key);

   final int num;


  @override
  State<BedType> createState() => _BedTypeState();
}

class _BedTypeState extends State<BedType> {


  bool isAvailable = true ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Text(
            //       "Number of beds",
            //       style: TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.w500,
            //         height: 1.5,
            //         color: Color(0xffa3a3a3),
            //       ),
            //     ),
            //     SizedBox(
            //       width: size.width * 0.02,
            //     ),
            //     Expanded(
            //       child: Container(
            //         margin:
            //         EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            //         padding:
            //         EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            //         width: size.width * 0.4,
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(100),
            //           boxShadow: [
            //             BoxShadow(
            //               color: Color(0x3f000000),
            //               offset: Offset(0, 2),
            //               blurRadius: 2,
            //             ),
            //           ],
            //         ),
            //         child: TextFormField(
            //             validator: (data) {
            //               if (data.isEmpty) return 'Field is required';
            //             },
            //           controller: NumberofbedController ,
            //             decoration: InputDecoration(
            //                 hintText: '0', border: InputBorder.none),
            //           keyboardType: TextInputType.numberWithOptions(),),
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(height: size.height*0.015,),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Center(
            //         child: GestureDetector(
            //           onTap: (){
            //             setState(() {
            //               isAvailable = true ;
            //               AvailableController == "Available";
            //               print(AvailableController);
            //             });
            //           },
            //           child: Container(
            //             padding: EdgeInsets.symmetric(
            //                 horizontal: 30,vertical: 10 ),
            //             child: Text(
            //               'available',
            //               style: TextStyle(
            //                 fontSize: 15,
            //                 fontWeight: FontWeight.w500,
            //                 height: 1.5,
            //                 color:isAvailable ? Colors.white : Color(0xffa3a3a3),
            //               ),
            //             ),
            //             decoration: BoxDecoration(
            //               border: Border.all(color: Color(0xffd9d9d9)),
            //               color: isAvailable ? Color(0xff93bc39) :Colors.white ,
            //               borderRadius: BorderRadius.circular(30),
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Color(0x0c000000),
            //                   offset: Offset(0, 2),
            //                   blurRadius: 2,
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       child: Center(
            //         child: GestureDetector(
            //           onTap: (){
            //             setState(() {
            //               isAvailable = false ;
            //               AvailableController == "UnAvailable";
            //               print(AvailableController);
            //             });
            //           },
            //           child: Container(
            //             padding: EdgeInsets.symmetric(
            //                 horizontal: 30,vertical: 10),
            //             child: Text(
            //               'unavailable',
            //               style: TextStyle(
            //                 fontSize: 15,
            //                 fontWeight: FontWeight.w500,
            //                 height: 1.5,
            //                 color: isAvailable ? Color(0xffa3a3a3) : Colors.white ,
            //               ),
            //             ),
            //             decoration: BoxDecoration(
            //               border: Border.all(color: Color(0xffd9d9d9)),
            //               color: isAvailable ? Color(0xffffffff) : Colors.red ,
            //               borderRadius: BorderRadius.circular(30),
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Color(0x0c000000),
            //                   offset: Offset(0, 2),
            //                   blurRadius: 2,
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(height: size.height*0.015,),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Text(
            //       "Cost per day",
            //       style: TextStyle(
            //         fontSize: 15,
            //         fontWeight: FontWeight.w500,
            //         height: 1.5,
            //         color: Color(0xffa3a3a3),
            //       ),
            //     ),
            //     SizedBox(
            //       width: size.width * 0.1,
            //     ),
            //
            //     Expanded(
            //       child: Container(
            //         margin:
            //         EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            //         padding:
            //         EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            //         width: size.width * 0.4,
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(100),
            //           boxShadow: [
            //             BoxShadow(
            //               color: Color(0x3f000000),
            //               offset: Offset(0, 2),
            //               blurRadius: 2,
            //             ),
            //           ],
            //         ),
            //         child: TextFormField(
            //             validator: (data) {
            //               if (data.isEmpty) return 'Field is required';
            //             },
            //           controller: CostController,
            //             decoration: InputDecoration(
            //               hintText: '0', border: InputBorder.none,
            //             ),
            //           keyboardType: TextInputType.numberWithOptions(),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
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
                        // controller:  ,
                        decoration: InputDecoration(
                            hintText: 'Type of bed',
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
                // controller: cost ,
                decoration: InputDecoration(
                  hintText: 'Cost',
                  hintStyle: TextStyle(color:Color(0xffd9d9d9)),
                  border: InputBorder.none,),
                keyboardType: TextInputType.number,),
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
                // controller: cost ,
                decoration: InputDecoration(
                  hintText: 'Available or UnAvailable',
                  hintStyle: TextStyle(color:Color(0xffd9d9d9)),
                  border: InputBorder.none,),
                keyboardType: TextInputType.number,),
            ),


          ],
        ),
      ),
    );
  }
}


