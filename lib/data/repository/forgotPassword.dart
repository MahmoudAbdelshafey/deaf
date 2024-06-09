import 'package:dio/dio.dart';
import 'package:first_project/const/config.dart';
abstract class ForgotPasswordApiService {
  static final Dio _dio = Dio();
  static final String forgotEndpoint = '/api/v1/auth/forgotPassword';
  static Future<void> Forgot(
      String email, var context) async {
    final url = '${Config.baseUrl}$forgotEndpoint';
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
        },
      );
      if (response.statusCode == 200) {
        print("${response.data}");
        // Navigator.pushNamed(
        //   context,
        //   HomePage.routeName,
        // );
      } else {
        throw Exception('Failed to send verification code');
      }
    } catch (e) {
      throw Exception('Failed to Forgot: ${e.toString()}');
    }
  }
}
