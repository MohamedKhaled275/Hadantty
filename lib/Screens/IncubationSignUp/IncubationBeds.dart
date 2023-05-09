import 'package:flutter/material.dart';
import 'package:hadantty/Screens/Components/BedType.dart';
import 'package:hadantty/Screens/IncubationSignUp/IncubationDoctors.dart';

class IncubationBeds extends StatelessWidget {
  const IncubationBeds({Key key}) : super(key: key);

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
              Column(
                children: [
                  Container(
                    margin:  EdgeInsets.fromLTRB(0,size.height*0.05 , 0, size.height*0.05),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Beds',
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
                  BedType(),
                  SizedBox(height: size.height*0.03,),
                  BedType(),
                  SizedBox(height: size.height*0.03,),
                  BedType(),
                ],
              ),
              SizedBox(height: size.height*0.4,),
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
