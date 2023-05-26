import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hadantty/Screens/IncubationHomeScreen/IncubationHomeScreen.dart';
import 'package:hadantty/Screens/PersonHome/PersonHomeScreen.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decode/jwt_decode.dart';

class Accounts {
  static Future<String> loginAccount({
    @required String username,
    @required String password,
  }) async {
    final uri = Uri.parse('http://sayedazp-001-site1.gtempurl.com/api/Account/login');
    final headers = {'Content-Type': 'application/json'};
    Map<String, dynamic> body = {
      "email": username,
      "password": password,
    };
    String jsonBody = json.encode(body);
    final encoding = Encoding.getByName('utf-8');

    http.Response response = await http.post(
      uri,
      headers: headers,
      body: jsonBody,
      encoding: encoding,
    );
    Map<String, dynamic> data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      String token = data['token'];
      if (verifyToken(token)) {
        return token;
      } else {
        throw Exception('Invalid token');
      }
    } else {
      throw Exception('Failed to login');
    }
  }

  static bool verifyToken(String token) {
    try {
      Map<String, dynamic> tokenPayload = Jwt.parseJwt(token);

      // Check token expiration
      DateTime expirationDate = DateTime.fromMillisecondsSinceEpoch(tokenPayload['exp'] * 1000);
      if (expirationDate.isBefore(DateTime.now())) {
        throw Exception('Token has expired');
      }

      // Perform additional checks based on your requirements
      String userRole = tokenPayload['role'];
      if (userRole != 'User' && userRole != 'Incubator') {
        throw Exception('Invalid user role');
      }

      return true; // Token is valid
    } catch (e) {
      print('Token verification failed: $e');
      return false; // Token is invalid
    }
  }
}

void navigateToPage(String token) {
  Map<String, dynamic> tokenPayload = Jwt.parseJwt(token);
  String userRole = tokenPayload['role'];

  if (userRole == 'User') {
    runApp(UserPage());
  } else if (userRole == 'Incubator') {
    runApp(IncubationPage());
  }
}

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PersonHomeScreen();
  }
}

class IncubationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IncubationHomeScreen();
  }
}
