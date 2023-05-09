import 'package:flutter/material.dart';
import 'package:hadantty/Screens/HomeScreen/HomeScreen.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 120),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('New Password',
                style: TextStyle(
                  color: Color(0xff008f9a),
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),),
              SizedBox(height: size.height*0.1,),
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
                        hintText: 'New Password',
                        hintStyle: TextStyle(color:Color(0xffd9d9d9)),
                        border: InputBorder.none)),
              ),
              SizedBox(height: size.height*0.02,),
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
                        hintText: 'Confirm New Password',
                        hintStyle: TextStyle(color:Color(0xffd9d9d9)),
                        border: InputBorder.none)),
              ),
              SizedBox(height: size.height*0.1,),
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
                            return HomeScreen() ;
                          }));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text('Save',
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
