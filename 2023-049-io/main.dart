import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() async {
  var file = File("products.json");

  // var response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
  // file.writeAsString(response.body);

  var content = file.readAsStringSync();

  List<dynamic> products = json.decode(content);

  print(products.first.runtimeType);
}
