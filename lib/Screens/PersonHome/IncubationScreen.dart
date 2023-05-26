import 'package:flutter/material.dart';
import 'package:hadantty/Screens/Components/CustomAppBar.dart';
import 'package:hadantty/Screens/PersonHome/PersonBooking.dart';

class IncubationScreen extends StatelessWidget {
  const IncubationScreen( {Key key,@required this.IncName}) : super(key: key);
  final String IncName;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(1, -1.026),
            end: Alignment(-1, 1),
            colors: <Color>[Color(0xff00ffef), Color(0xff008f9a)],
            stops: <double>[0, 1],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                right: 0,
                child: SizedBox(
                  width: size.width,
                  height: size.height * .5,
                  child: Image.asset('assets/images/incubation2.png',fit: BoxFit.cover,)
                )),
            Positioned(
                top: size.height*0.4,
                child: SizedBox(
                  width: size.width,
                  height: size.height * .650,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, -10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5,
                                    color: Color(0xff008f9a),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '$IncName\n',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5,
                                        color: Color(0xff008f9a),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '',
                                    ),
                                  ])),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5,
                                    color: Color(0xff008f9a),
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                      'lorem ipsum dolor sit amet consectetur adipiscing elit .'
                                          ' lorem ipsum dolor sit amet consectetur adipiscing elit .'
                                          ' lorem ipsum dolor sit amet consectetur adipiscing elit .',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5,
                                        color: Color(0xffa3a3a3),
                                      ),
                                    ),
                                  ])),
                        ),

                        SizedBox(height: 75,),
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
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => PersonBooking()));
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Text('Book',
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
                )),
          ],
        ),
      ),
    );
  }
}
