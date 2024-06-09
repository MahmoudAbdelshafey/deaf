import 'package:dio/dio.dart';
import 'package:first_project/const/config.dart';
import 'package:first_project/forget_password/new_password.dart';
import 'package:flutter/material.dart';

abstract class VerifyCodeApiService {
  static final Dio _dio = Dio(BaseOptions(
    headers: {
      Headers.contentTypeHeader: 'application/json; charset=utf-8',
    },
  ));
  static final String _verifyEndpoint = '/api/v1/auth/verifyResetCode';

  /// Verifies the reset code sent to the provided email.
  ///
  /// Throws an [Exception] if the verification fails.
  static Future<void> verify(String verifyCode, dynamic context) async {
    final String url = '${Config.baseUrl}$_verifyEndpoint';
    try {
      final Response response = await _dio.post(
        url,
        data: {
          'resetCode': verifyCode,
        },
      );
      if (response.statusCode == 200) {

        print(response.data);
        Navigator.pushReplacementNamed(
            context, NewPassword.routeName);
      } else {
        // Handle unexpected status codes
        throw Exception('Failed to send verification code. Status code: ${response.statusCode}');
      }
    } on DioError catch (dioError) {

      if (dioError.response != null) {
        throw Exception('Server error: ${dioError.response?.data}');
      } else {
        throw Exception('Network error: ${dioError.message}');
      }
    } catch (e) {

      throw Exception('Unexpected error: ${e.toString()}');
    }
  }
}
