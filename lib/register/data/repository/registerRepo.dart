import 'package:dio/dio.dart';
import 'package:first_project/const/config.dart';
import 'package:first_project/login/login_form.dart';
import 'package:flutter/material.dart';
abstract class RegisterApiServices {
  static final Dio _dio = Dio();
  static final String signupEndpoint = '/api/v1/auth/signup';
  static Future<void> register(
      String username, String email, String password, String confirmPassword, BuildContext context) async {
    final url = '${Config.baseUrl}$signupEndpoint';
    try {
      final response = await _dio.post(
        url,
        options: Options(headers: {
          Headers.contentLengthHeader: 588,
          Headers.contentTypeHeader: 'application/json; charset=utf-8',
        }),
        data: {
          'name': username,
          'email': email,
          'password': password,
          'passwordConfirm': confirmPassword,
        },
      );
      if (response.statusCode == 200) {
        final data = response.data;
        final token = data['token'];
        Navigator.pushNamed(context, LoginForm.routeName);
      } else {
        throw Exception('Failed to signup');
      }
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to signup: ${e.response?.data['message'] ?? 'Unknown error'}')),
        );
      } else {
        print('Error sending request!');
        print(e.message);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to signup: ${e.message}')),
        );
      }
    } catch (e) {
      print('Unexpected error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to signup: ${e.toString()}')),
      );
    }
  }
}
