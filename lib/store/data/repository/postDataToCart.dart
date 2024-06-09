import 'package:dio/dio.dart';
import 'package:first_project/const/config.dart';
class Postdatatocart {
  final String productId;
  Postdatatocart({required this.productId});
  static final Dio dio = Dio(BaseOptions(baseUrl: Config.baseUrl));
  static final String categoryEndpoint = '/api/v1/cart';
  Future<void> getBooks() async { // Removed static
    try {
      final response = await dio.post(
        categoryEndpoint,
        data: {"productId": productId}, // Now accessible
      );
      if (response.statusCode == 200) {
        final data = response.data;
        // Process the data here
      } else {
        print('Failed to load books. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching book Data From Api: $e');
    }
  }
}