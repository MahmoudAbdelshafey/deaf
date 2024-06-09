import 'package:dio/dio.dart';
import 'package:first_project/const/config.dart';
import 'package:first_project/data/model/category.dart';
class CategoryApiService {
 static
 final Dio dio = Dio(BaseOptions(baseUrl: Config.baseUrl));
  static final String categoryEndpoint = '/api/v1/categories';

  static Future<List<Datum>?> getCategory() async {
    try {
      final response = await dio.get(categoryEndpoint);

      if (response.statusCode == 200) {
        final data = response.data;
        final categoryModel = ModelCatergory.fromJson(data);
        return categoryModel.data;
      } else {
        print('Failed to load categories. Status code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error fetching categories: $e');
      return null;
    }
  }
}
