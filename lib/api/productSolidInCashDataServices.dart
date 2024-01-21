import 'package:smartbapp/projectApiFactory/productSolidInCashFactory.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
class DataService {
  static Future<List<ProductData>> fetchProductData() async {
    final apiUrl = "http://192.168.43.3:8000/api/product-solid-in-cash";
    final response = await http.get(Uri.parse(apiUrl));
    print('API Response: ${response.body}');

    if (response.statusCode == 200) {
      final dynamic jsonData = json.decode(response.body);


      if (jsonData is List) {
        return jsonData.map((item) => ProductData.fromJson(item)).toList();
      } else if (jsonData is Map<String, dynamic>) {
        return [ProductData.fromJson(jsonData)];
      } else {
        throw Exception('Unexpected data type in API response');
      }
    } else {
      throw Exception(
          'Failed to fetch data. Status code: ${response.statusCode}');
    }
  }
}
