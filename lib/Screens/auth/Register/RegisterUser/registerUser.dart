import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class RegisterUser{
  static signupAccount(
      @required String Fullname,
      @required String email,
      @required String password,
      @required String City,
      )
  async{
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse('http://sayedazp-001-site1.gtempurl.com/api/Account/registerUser'));
    request.body = json.encode({
      "displayName": Fullname,
      "email": email,
      "roleName": "User",
      "city": City,
      "password": password,
      "PhoneNumber": "0123456789"
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }
  }
}
