import 'package:dio/dio.dart';
import 'package:first_project/const/config.dart';
import 'package:first_project/login/login_screen.dart';
import 'package:flutter/material.dart';
abstract class NewpasswordApiService {
  static final Dio _dio = Dio();
  static final String newPasswordEndpoint = '/api/v1/auth/resetPassword';
  static Future<void> newpassword(
      String email,String password,var context) async {
    final url = '${Config.baseUrl}$newPasswordEndpoint';
    try {
      final response = await _dio.post(
        url,
        // options: Options(headers:{
        //   Headers.contentLengthHeader:588,
        //   Headers.contentTypeHeader:'application/json; charset=utf-8',
        //
        // }),
        data:{
          'email':email,
          'newPassword':password
        },
      );
      if (response.statusCode == 200) {
        print("${response.data}");
        Navigator.pushReplacementNamed(
            context, LoginScreen.routeName);
      } else {
        throw Exception('Failed to put email and password');
      }
    } catch (e) {
      throw Exception('Failed to setNewPassword: ${e.toString()}');
    }
  }
}
