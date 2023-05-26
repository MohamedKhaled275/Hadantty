import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class RegisterInc{
  static AddDoctor(
      @required String DoctorName,
      @required String Specialization,
      @required String phoneNumber,
      )
  async{
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse('http://sayedazp-001-site1.gtempurl.com/api/Incubator/AddDoctor'));
    request.body = json.encode({
      "name": DoctorName,
      "phoneNumber": phoneNumber,
      "specialization": Specialization
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
