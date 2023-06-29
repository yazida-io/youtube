import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.model.dart';

class ApiService {
  static Future<List<Product>> fetchProducts() async {
    var response =
    await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200) {
      List document = jsonDecode(response.body);
      return document.map((product) => Product.fromJson(product)).toList();
    }

    throw Exception("Une erreur est survenue");
  }
}