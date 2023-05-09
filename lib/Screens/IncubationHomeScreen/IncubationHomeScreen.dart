import 'package:flutter/material.dart';
import 'package:hadantty/Screens/IncubationHomeScreen/IncubationBeds.dart';

class IncubationHomeScreen extends StatelessWidget {
  const IncubationHomeScreen({Key key}) : super(key: key);

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
               height: 670,
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
                     GestureDetector(
                       onTap: (){
                         Navigator.push(
                             context, MaterialPageRoute(builder: (context) => IncubationBeds()));
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
                               decoration: BoxDecoration(
                                 border: Border.all(color: Color(0xffd9d9d9)),
                                 borderRadius: BorderRadius.circular(20),
                               ),
                               child: CircleAvatar(
                                 backgroundColor: Colors.white,
                                 radius: 40.0,
                                 child: Text(
                                     'type1',
                                   style: TextStyle(
                                     color: Colors.lightBlue
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(width: 20.0,),
                             Expanded(
                               child: Column(
                                 mainAxisSize: MainAxisSize.min,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                       '5 Beds Busy',
                                     style: TextStyle(
                                       color: Colors.grey
                                     ),),
                                   Text(
                                     '2 Beds unavailable',
                                     style: TextStyle(
                                       color:Colors.grey,
                                     ),),
                                   Text(
                                     '1 Bed available',
                                     style: TextStyle(
                                       color:Colors.grey,
                                     ),),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                     SizedBox(height: 20,),
                     GestureDetector(
                       onTap: (){
                         Navigator.push(
                             context, MaterialPageRoute(builder: (context) => IncubationBeds()));
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
                               decoration: BoxDecoration(
                                 border: Border.all(color: Color(0xffd9d9d9)),
                                 borderRadius: BorderRadius.circular(20),
                               ),
                               child: CircleAvatar(
                                 backgroundColor: Colors.white,
                                 radius: 40.0,
                                 child: Text(
                                   'type1',
                                   style: TextStyle(
                                       color: Colors.lightBlue
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(width: 20.0,),
                             Expanded(
                               child: Column(
                                 mainAxisSize: MainAxisSize.min,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                     '5 Beds Busy',
                                     style: TextStyle(
                                         color: Colors.grey
                                     ),),
                                   Text(
                                     '2 Beds unavailable',
                                     style: TextStyle(
                                       color:Colors.grey,
                                     ),),
                                   Text(
                                     '1 Bed available',
                                     style: TextStyle(
                                       color:Colors.grey,
                                     ),),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                     SizedBox(height: 20,),
                     GestureDetector(
                       onTap: (){
                         Navigator.push(
                             context, MaterialPageRoute(builder: (context) => IncubationBeds()));
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
                               decoration: BoxDecoration(
                                 border: Border.all(color: Color(0xffd9d9d9)),
                                 borderRadius: BorderRadius.circular(20),
                               ),
                               child: CircleAvatar(
                                 backgroundColor: Colors.white,
                                 radius: 40.0,
                                 child: Text(
                                   'type1',
                                   style: TextStyle(
                                       color: Colors.lightBlue
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(width: 20.0,),
                             Expanded(
                               child: Column(
                                 mainAxisSize: MainAxisSize.min,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                     '5 Beds Busy',
                                     style: TextStyle(
                                         color: Colors.grey
                                     ),),
                                   Text(
                                     '2 Beds unavailable',
                                     style: TextStyle(
                                       color:Colors.grey,
                                     ),),
                                   Text(
                                     '1 Bed available',
                                     style: TextStyle(
                                       color:Colors.grey,
                                     ),),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                     SizedBox(height: 20,),
                     GestureDetector(
                       onTap: (){
                         Navigator.push(
                             context, MaterialPageRoute(builder: (context) => IncubationBeds()));
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
                               decoration: BoxDecoration(
                                 border: Border.all(color: Color(0xffd9d9d9)),
                                 borderRadius: BorderRadius.circular(20),
                               ),
                               child: CircleAvatar(
                                 backgroundColor: Colors.white,
                                 radius: 40.0,
                                 child: Text(
                                   'type1',
                                   style: TextStyle(
                                       color: Colors.lightBlue
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(width: 20.0,),
                             Expanded(
                               child: Column(
                                 mainAxisSize: MainAxisSize.min,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                     '5 Beds Busy',
                                     style: TextStyle(
                                         color: Colors.grey
                                     ),),
                                   Text(
                                     '2 Beds unavailable',
                                     style: TextStyle(
                                       color:Colors.grey,
                                     ),),
                                   Text(
                                     '1 Bed available',
                                     style: TextStyle(
                                       color:Colors.grey,
                                     ),),
                                 ],
                               ),
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
