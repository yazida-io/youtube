import 'dart:convert';

import 'package:mobile_app/Config.dart';
import 'package:http/http.dart' as http;
import '../models/category.model.dart';
import '../models/product.model.dart';

class ProductService {
  static Future<List<Category>> categories() async {
    final response = await http.get(Uri.parse('${Config.apiUrl}/categories'));
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<Category>((json) => Category.fromJson(json)).toList();
    } else {
      throw Exception('Unable to fetch products from the REST API');
    }
  }

  static Future<List<Product>> products(String category) async {
    final response = await http.get(Uri.parse('${Config.apiUrl}/categories/$category/products'));
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<Product>((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Unable to fetch products from the REST API');
    }
  }
}
