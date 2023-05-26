import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadantty/Cache_Helper.dart';
import 'package:hadantty/End_Points.dart';
import 'package:hadantty/dio_helper.dart';
import 'package:hadantty/models/Login_Model.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'login_state.dart';

// class LoginCubit extends Cubit<LoginState> {
//   LoginCubit() : super(LoginInitialState());
//
//   static LoginCubit get(context) => BlocProvider.of(context);
//
//   LoginModel login;
//
//   // void userLogin(@required String email, @required String password) async {
//   //   emit(LoginLoadingState());
//
//       // final uri = Uri.parse('http://sayedazp-001-site1.gtempurl.com/api/Account/login');
//       // final headers = {'Content-Type': 'application/json'};
//       // Map<String, dynamic> body = {
//       //   "email": email,
//       //   "password": password,
//       // };
//       // String jsonBody = json.encode(body);
//       // final encoding = Encoding.getByName('utf-8');
//       //
//       // http.Response response = await http.post(
//       //   uri,
//       //   headers: headers,
//       //   body: jsonBody,
//       //   encoding: encoding,
//       // );
//       // Map<String, dynamic> data = jsonDecode(response.body);
//       // print(data);
//
//     void Login(String text, String text2, {
//       @required String email,
//       @required String password,
//     }){
//       emit(LoginLoadingState());
//       DioHelper.postData(
//           url: "http://sayedazp-001-site1.gtempurl.com/api/Account/login",
//           data:
//       {
//         'email':email,
//         'password':password
//       }
//       ).then((value){
//         print(value.data);
//        login = LoginModel.fromJson(value.data);
//        print(login.displayName);
//        print(login.roleName);
//        print(login.token);
//         emit(LoginSuccessState());
//       }).catchError((error){
//         print(error.toString());
// emit(LoginErrorState(error));
//       });
//     }
//
//
//
//
//
//   bool isPassword = true;
//   IconData suffix = Icons.visibility_outlined;
//
//     void changePasswordVisibility(){
//     isPassword = !isPassword;
//     suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
//
//     emit(ShowPasswordState());
//     }
// }

class LoginCubit extends Cubit<LoginState>{
  LoginCubit(initialState) : super(LoginInitialState());
  static LoginCubit get(context)=>BlocProvider.of(context);
   LoginModel login;

  void userLogin(
    @required String email,
    @required String password
  )async{
    emit(LoginLoadingState());
    final uri = Uri.parse('http://sayedazp-001-site1.gtempurl.com/api/Account/login');
      final headers = {'Content-Type': 'application/json'};
      Map<String, dynamic> body = {
        "email": email,
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
      print(data);
    login = LoginModel.fromJson(data);
       print("display name : ${login.displayName}");
       print("Role Name : ${login.roleName}");
       print("Token: ${login.token}");
        CacheHelper.saveData(key: 'token', value: login.token);
        CacheHelper.saveData(key: 'roleName', value: login.roleName);
        CacheHelper.saveData(key: 'DisplayName', value: login.displayName);
       emit(LoginSuccessState(login));
  }
  IconData suffix=Icons.visibility_outlined;
  bool isPassword=false;
  void changePasswordVisibility()
  {
    isPassword=!isPassword;
    suffix=isPassword ? Icons.visibility_outlined:Icons.visibility_off;
    emit(ShowPasswordState());
  }
}
