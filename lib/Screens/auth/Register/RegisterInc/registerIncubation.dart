import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class RegisterInc{
  static signupAccount(
      @required String IncName,
      @required String email,
      @required String PhoneNumber,
      @required String password,
      @required String City,
      )
  async{
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse('http://sayedazp-001-site1.gtempurl.com/api/Account/registerIncubator'));
    request.body = json.encode({
      "displayName": IncName,
      "email": email,
      "phoneNumber": PhoneNumber,
      "password": password,
      "city": City
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
