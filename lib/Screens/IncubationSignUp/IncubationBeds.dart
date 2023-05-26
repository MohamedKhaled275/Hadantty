import 'package:flutter/material.dart';
import 'package:hadantty/Screens/Components/BedType.dart';
import 'package:hadantty/Screens/IncubationSignUp/IncubationDoctors.dart';

import '../auth/Register/RegisterInc/AddBed.dart';

class IncubationBeds extends StatefulWidget {
  const IncubationBeds({Key key}) : super(key: key);

  @override
  State<IncubationBeds> createState() => _IncubationBedsState();
}

class _IncubationBedsState extends State<IncubationBeds> {

  TextEditingController TypeController = TextEditingController();
  TextEditingController AvailableController = TextEditingController();
  TextEditingController CostController = TextEditingController();
  bool isAvailable = true;
  List<int> demoList = [1];

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;

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
                     const Text('Beds', style: TextStyle(
                          fontSize:  25,
                          fontWeight:  FontWeight.w600,
                          height:  1.5,
                          color:  Color(0xff008f9a),
                        ),),
                      IconButton(onPressed: ()
                      {
                        setState(() {
                          // demoList.add(1);
                        });
                      },
                          icon:const Icon(Icons.add)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height*0.65,
                child: ListView.separated(
                  itemCount: demoList.length,
                  separatorBuilder: (context,index){
                   return Divider(
                     color: Colors.grey,thickness: 0.4,
                   );
                  },
                  itemBuilder: (context , index){
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
                                      controller: TypeController ,
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
                              controller: CostController ,
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
                              controller: AvailableController ,
                              decoration: InputDecoration(
                                hintText: 'Available or UnAvailable',
                                hintStyle: TextStyle(color:Color(0xffd9d9d9)),
                                border: InputBorder.none,),
                              ),
                          ),


                        ],
                      ),
                    ),
                  );
                } ,),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.2, vertical: size.height*0.02),
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
                    onPressed: ()async {
                      await RegisterInc.AddBed(TypeController.text,AvailableController.text,CostController.text);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (Context) {
                            return IncubationDoctors() ;
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
