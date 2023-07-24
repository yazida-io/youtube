import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.model.dart';
import '../models/product.model.dart';

class ProductScreen extends StatefulWidget {
  static const routeName = 'product';

  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 500,
          pinned: true,
          floating: true,
          actions: [
            ElevatedButton(
              onPressed: () => Provider.of<Cart>(context, listen: false).toggleFavorite(product),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
                foregroundColor: Colors.redAccent,
              ),
              child: const Icon(Icons.favorite_border),
            ),
          ],
          stretch: true,
          flexibleSpace: FlexibleSpaceBar(
            background: PageView(
              children: [
                for (final image in product.images)
                  Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(
                  product.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nisl nisl ultricies nisl, nec aliquam nisl nisl nec.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "\$${product.price}",
                      style: const TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Provider.of<Cart>(context, listen: false).add(product);
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text("Added to cart"),
                            content: const Text(
                                "This product has been added to your cart"),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: const Text("OK"),
                              )
                            ],
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 35, vertical: 15),
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                      ),
                      icon: const Icon(Icons.add_shopping_cart),
                      label: const Text(
                        "Add to cart",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }

  _makeFavorite(Product product) {}
}
