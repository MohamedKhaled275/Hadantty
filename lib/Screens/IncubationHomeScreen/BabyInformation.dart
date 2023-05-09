import 'package:flutter/material.dart';

class BabyInformationScreen extends StatelessWidget {
  const BabyInformationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      text: 'BedType :',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color(0xff008f9a),
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: 'Type1',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color(0xffa3a3a3),
                      ),
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
                      text: 'BabyName :',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color(0xff008f9a),
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: 'Mark Jon',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color(0xffa3a3a3),
                      ),
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
                      text: 'Age :',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color(0xff008f9a),
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: '3 Days',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color(0xffa3a3a3),
                      ),
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
                      text: 'Type of Illness :',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color(0xff008f9a),
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: 'Bradycardia',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color(0xffa3a3a3),
                      ),
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
                      text: 'pharmaceutical :\n',
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
                    TextSpan(
                      text: 'Type1\nTybe2\nTybe3\ntybe4',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color(0xffa3a3a3),
                      ),
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
                      text: 'Description of the daily situation :\n',
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
          ],
        ),
      ),
    );
  }
}
