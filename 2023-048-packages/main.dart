import 'package:http/http.dart' as http;
import 'my_library.dart' as ml;

void main() {
  http
      .get(Uri.parse("https://fakestoreapi.com/products"))
      .then((value) => print(value.statusCode));

  print(ml.sayHello("Mouctar"));
}
