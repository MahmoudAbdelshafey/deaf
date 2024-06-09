import 'package:dio/dio.dart';
import 'package:first_project/components/home_learning.dart';
import 'package:first_project/const/config.dart';
import 'package:flutter/material.dart';abstract class ApiService {
  // final  eamil;
  // final   password;
  // ApiService({required this.eamil,required this.password});
  static final Dio _dio = Dio();
  static final String loginEndpoint = '/api/v1/auth/login';
  static Future<void> login(
      String username, String password, var context) async {
    final url = '${Config.baseUrl}$loginEndpoint';
    try {
      final response = await _dio.post(
        url,
        options: Options(headers:{
          Headers.contentLengthHeader:588,
          Headers.contentTypeHeader:'application/json; charset=utf-8',

        }),
        data:{
          'email': username,
          'password': password,
        },
      );
      if (response.statusCode == 200) {
        print("${response.data}");
        Navigator.pushNamed(
          context,
          HomePage.routeName,
        );
      } else {
        throw Exception('Failed to login');
      }
    } catch (e) {
      throw Exception('Failed to login: ${e.toString()}');
    }
  }
}
