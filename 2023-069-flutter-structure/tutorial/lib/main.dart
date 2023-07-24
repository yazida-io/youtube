import 'package:flutter/material.dart';
import 'package:tutorial/screens/product-show.screen.dart';
import 'package:tutorial/screens/products.screen.dart';


void main() {
  runApp(const MyTutorialApp());
}

class MyTutorialApp extends StatelessWidget {
  const MyTutorialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Products',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        ProductsScreen.routeName: (context) => const ProductsScreen(),
        ProductShowScreen.routeName: (context) => const ProductShowScreen(),
      },
      initialRoute: ProductsScreen.routeName,
    );
  }
}

