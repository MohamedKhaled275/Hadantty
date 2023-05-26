import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHelper {
  static Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'http://sayedazp-001-site1.gtempurl.com/api/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    @required String url,
     Map<String, dynamic> query,
    String lang = 'en',
    String token,
  }) async {
    dio.options = BaseOptions(
        headers: {
      'Authroization': "Bearer ${token}",
    });
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    @required String url,
    @required Map<String, dynamic> query,
    @required Map<String, dynamic> data,
    String lang = 'en',
    String token,
  }) async {
    dio.options.headers = {
      'lang': lang,
      'Authroization': token,
    };

    return dio.post(url, queryParameters: query, data: data);
  }
}
