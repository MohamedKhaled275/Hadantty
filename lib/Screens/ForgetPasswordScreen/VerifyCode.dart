import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hadantty/Screens/ForgetPasswordScreen/NewPassword.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 120),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Verify Code',
                  style: TextStyle(
                    color: Color(0xff008f9a),
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),),
                SizedBox(height: size.height*0.05,),
                Text('The verification code was sent via email',
                  style: TextStyle(
                    color: Color(0xffa3a3a3),
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,),
                SizedBox(height: size.height*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 68,
                      height: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1)
                            FocusScope.of(context).nextFocus();
                        },
                        onSaved: (pin1){},
                        decoration: InputDecoration(
                          hintText: '0',
                        ) ,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 68,
                      height: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1)
                            FocusScope.of(context).nextFocus();
                        },
                        onSaved: (pin1){},
                        decoration: InputDecoration(
                          hintText: '0',
                        ) ,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 68,
                      height: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1)
                            FocusScope.of(context).nextFocus();
                        },
                        onSaved: (pin1){},
                        decoration: InputDecoration(
                          hintText: '0',
                        ) ,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 68,
                      height: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1)
                            FocusScope.of(context).nextFocus();
                        },
                        onSaved: (pin1){},
                        decoration: InputDecoration(
                          hintText: '0',
                        ) ,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height*0.05,),
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
                              return NewPassword() ;
                            }));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Text('Continue',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Color(0xffffffff),
                          )),
                    )),
                SizedBox(height: size.height*0.03,),

                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Didn’t recive code ? ',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: Color(0xffa3a3a3),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Resend',
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
