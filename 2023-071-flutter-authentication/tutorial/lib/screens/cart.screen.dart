import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial/models/cart.model.dart';

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
        title: Consumer<Cart>(
          builder: (context, cart, child) {
            return Text("Cart (${cart.products.length})");
          },
        ),
      ),
      body: SafeArea(
        bottom: true,
        child: Column(
          children: [
            Expanded(
              child:  Consumer<Cart>(
                builder: (context, cart, child) {
                  if (cart.products.isEmpty) {
                    return const Center(
                      child: Text("No products in the cart"),
                    );
                  }

                  return ListView.builder(
                    itemCount: cart.products.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(cart.products[index].title),
                        subtitle: Text("\$${cart.products[index].price}"),
                        trailing: IconButton(
                          icon: const Icon(Icons.remove_circle_outline),
                          onPressed: () {
                            Provider.of<Cart>(context, listen: false).remove(cart.products[index]);
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("Checkout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
