import 'package:flutter/material.dart';

Widget defaultFormText({
  @required TextEditingController control,
  @required TextInputType type,
  @required dynamic validate,
  bool isPassword = false,
  String hintText,
   IconData prefix,
  IconData suffix,
  Function() suffixClicked,
  // bool isClickable = true,
}) =>
    TextFormField(
      controller: control,
      keyboardType: type,
      validator: validate,
      obscureText: isPassword,

      decoration: InputDecoration(
          prefixIcon: Icon(prefix),
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xffd9d9d9)),
          suffixIcon: suffix != null
              ? IconButton(
            onPressed: () {
              suffixClicked();
            },
            icon: Icon(suffix),
          )
              : null,
          border:InputBorder.none ),
    );

void printFullText(String Text){
  final pattern = RegExp('.{1,800}');
  pattern.allMatches(Text).forEach((match) => print(match.group(0)));
}

