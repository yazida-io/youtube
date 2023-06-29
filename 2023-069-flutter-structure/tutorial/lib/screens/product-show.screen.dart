import 'package:flutter/material.dart';
import 'package:tutorial/models/product.model.dart';

import '../common/ui.dart';

class ProductShowScreen extends StatelessWidget {
  static const routeName = 'product-show';

  const ProductShowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Container(
        decoration: defaultScreenDecoration,
        child: ListView(children: [
          Hero(tag: product.id, child: Image.network(product.image)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    product.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              product.description,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
