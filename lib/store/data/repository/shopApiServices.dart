import 'package:dio/dio.dart';
import 'package:first_project/const/config.dart';
import 'package:first_project/store/data/model/shopModel.dart';
class ShopApiService {
  static final Dio dio = Dio(BaseOptions(baseUrl: Config.baseUrl));
  static final String categoryEndpoint = '/api/v1/products';
  static Future<List<Datum>?> getBooks() async {
    try {
      final response = await dio.get(categoryEndpoint);
      if (response.statusCode == 200) {
        final data = response.data;
        const String targetCategoryId = '665e79c83e9f331b9e44a7ae';
        final books = ShopModel.fromJson(data);
        return books.data.where((datum) => datum.category.id == targetCategoryId).toList();
      } else {
        print('Failed to load books. Status code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error fetching book data from API: $e');
      return null;
    }
  }
}