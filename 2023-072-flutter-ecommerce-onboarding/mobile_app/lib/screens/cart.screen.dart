import 'package:flutter/material.dart';
import 'package:mobile_app/models/cart.model.dart';
import 'package:provider/provider.dart';

import '../models/product.model.dart';

class CartScreen extends StatefulWidget {
  static const routeName = 'cart';

  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Cart'),
      ),
      body: Consumer<Cart>(
        builder: (context, cart, child) {

          if (cart.products.isEmpty) {
            return const Center(
              child: Text('🛒', style: TextStyle(fontSize: 200)),
            );
          }

          return ListView(
              children: cart.products.map(
            (record) {
              final (product, quantity) = record;
              return CartWidget(
                product: product,
                quantity: quantity,
              );
            },
          ).toList());
        },
      ),
    );
  }
}

class CartWidget extends StatelessWidget {
  final Product product;
  final int quantity;
  final imageSize = 150.0;

  const CartWidget({super.key, required this.product, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: imageSize,
            padding: const EdgeInsets.all(10),
            child: Image.network(product.images.first,
                width: imageSize, height: imageSize),
          ),
          Padding(
            padding: const EdgeInsets.all(.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width -
                        (imageSize + (10 + 8 + 2 + 10) * 2),
                  ),
                  padding: const EdgeInsets.all(10),
                  child:
                      Text(product.name, style: const TextStyle(fontSize: 23)),
                ),
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                    color: Colors.redAccent,
                    fontSize: 30,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                    child: Row(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Provider.of<Cart>(context, listen: false)
                                .remove(product);
                          },
                          shape: const CircleBorder(),
                          child: const Icon(Icons.remove),
                        ),
                        Text('$quantity'),
                        MaterialButton(
                          onPressed: () {
                            Provider.of<Cart>(context, listen: false)
                                .add(product);
                          },
                          shape: const CircleBorder(),
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
