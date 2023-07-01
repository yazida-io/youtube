import 'package:flutter/material.dart';
import 'package:tutorial/screens/product-show.screen.dart';
import 'package:tutorial/screens/signin.screen.dart';
import 'package:tutorial/services/auth.service.dart';

import '../common/ui.dart';
import '../models/product.model.dart';
import '../services/api.service.dart';
import 'cart.screen.dart';

class ProductsScreen extends StatefulWidget {
  static const routeName = 'products';

  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  late Future<List<Product>> futureProduct;

  @override
  void initState() {
    super.initState();
    futureProduct = ApiService.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        leading: IconButton(
          icon: const Icon(
            Icons.power_settings_new_outlined,
            color: Colors.pinkAccent,
          ),
          onPressed: () async {
            AuthService.signOut().then((_) {
              Navigator.pushReplacementNamed(context, SignInScreen.routeName);
            });
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepPurpleAccent,
              ),
              icon: const Icon(Icons.shopping_cart),
              label: const Text("Cart"),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: defaultScreenDecoration,
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
                child: GridView.builder(
                  padding: const EdgeInsets.all(10.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: snapshot.data![index]);
                  },
                ),
              );
            }

            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ProductShowScreen.routeName,
            arguments: product);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Hero(
                  tag: product.id,
                  child: Image.network(product.image, width: 200, height: 300)),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 11,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${product.price} €",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        product.title.length > 15
                            ? "${product.title.substring(0, 15)}..."
                            : product.title,
                        style: const TextStyle(),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
