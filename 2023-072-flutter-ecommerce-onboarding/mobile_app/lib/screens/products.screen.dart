import 'package:flutter/material.dart';
import 'package:mobile_app/services/product.service.dart';
import 'package:mobile_app/widgets/product-card.widget.dart';

class ProductsScreen extends StatelessWidget {
  static const routeName = 'products';

  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text(arguments['name']),
      ),
      body: FutureBuilder(
        future: ProductService.products(arguments['category']),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }

          if (snapshot.hasData) {
            return GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 9/14,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final product = snapshot.data![index];
                return ProductCard(product: product, height: 350);
              },
            );
          }

          return Container(
            alignment: Alignment.center,
            child: const CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
