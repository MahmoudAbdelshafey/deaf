import 'package:dio/dio.dart';
import 'package:first_project/const/config.dart';
import 'package:first_project/store/data/model/GetLoggedUserCart.dart';
// import 'package:first_project/store/models/GetLoggedUserCart.dart'; // Ensure correct path

class GetDataFromCart {
  static final Dio dio = Dio(BaseOptions(baseUrl: Config.baseUrl));
  static final String categoryEndpoint = "/api/v1/cart";

  static Future<GetLoggedUserCartModel?> getBooks() async {
    try {
      final response = await dio.get(categoryEndpoint);
      if (response.statusCode == 200 && response.data != null) {
        return GetLoggedUserCartModel.fromJson(response.data);
      } else {
        print('Failed getting data for cart product. Status code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error getting data for cart product Api: $e');
      return null;
    }
  }
}
