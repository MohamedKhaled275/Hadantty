import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class RegisterInc{
  static AddBed(
      @required String TypeOfBed,
      @required String IsAvailable,
      @required String Cost,
      )
  async{
  var headers = {
    'Content-Type': 'application/json'
  };
  var request = http.Request('POST', Uri.parse('http://sayedazp-001-site1.gtempurl.com/api/Incubator/AddBed'));
  request.body = json.encode({
  "typeofBed": TypeOfBed,
  "condition": IsAvailable,
  "costPerDay": Cost
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
