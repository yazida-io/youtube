import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial/screens/cart.screen.dart';
import 'package:tutorial/screens/product-show.screen.dart';
import 'package:tutorial/screens/products.screen.dart';

import 'models/cart.model.dart';


void main() {
  runApp(
      ChangeNotifierProvider(
        create: (context) => Cart(),
        child: const MyTutorialApp(),
      ),
  );
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
        CartScreen.routeName: (context) => const CartScreen(),
      },
      initialRoute: ProductsScreen.routeName,
    );
  }
}

