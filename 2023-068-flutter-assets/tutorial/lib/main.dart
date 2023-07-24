import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyTutorialApp());
}

class MyTutorialApp extends StatefulWidget {
  const MyTutorialApp({super.key});

  @override
  State<MyTutorialApp> createState() => _MyTutorialAppState();
}

class _MyTutorialAppState extends State<MyTutorialApp> {
  late Future<List<Product>> futureProduct;

  @override
  void initState() {
    super.initState();
    futureProduct = fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assets',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.deepPurpleAccent,
                    Colors.deepOrange,
                  ],
                ),
              ),
              child: FutureBuilder(
                future: futureProduct,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  }

                  if (snapshot.hasData) {
                    return Center(
                      child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Image.network(snapshot.data![index].image),
                                  Text(
                                    "\$${snapshot.data![index].price}",
                                    style: const TextStyle(fontSize: 30, color: Colors.deepPurpleAccent),
                                  ),
                                  Text(snapshot.data![index].title),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }

                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<List<Product>> fetchProducts() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200) {
      List document = jsonDecode(response.body);
      return document.map((product) => Product.fromJson(product)).toList();
    }

    throw Exception("Une erreur est survenue");
  }
}

class Product {
  final int id;
  final String title;
  final String image;
  final String description;
  final double price;

  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      description: json['description'],
      price: double.parse("${json['price']}"),
    );
  }
}
