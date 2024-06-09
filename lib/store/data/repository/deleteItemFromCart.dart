import 'package:dio/dio.dart';
import 'package:first_project/const/config.dart';

class DeleteitemfromcartApiService{
  static final Dio dio = Dio(BaseOptions(baseUrl: Config.baseUrl));
  static final String cartEndpoint = '/api/v1/cart';

  // Existing methods...

  static Future<bool> removeItemFromCart(String itemId) async {
    try {
      final response = await dio.delete('$cartEndpoint/$itemId');
      if (response.statusCode == 200 || response.statusCode == 204) {
        return true;
      } else {
        print('Failed to remove item from cart. Status code: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('Error removing item from cart: $e');
      return false;
    }
  }
}
