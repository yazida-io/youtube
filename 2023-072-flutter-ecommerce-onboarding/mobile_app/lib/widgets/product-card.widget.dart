import 'package:flutter/material.dart';

import '../models/product.model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Function()? onTap;
  final double height;

  const ProductCard(
      {super.key, required this.product, this.onTap, this.height = 400});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap ?? () {
              print("Product ${product.name} is tapped");
            },
            child: Container(
              width: 200,
              height: height * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(23),
                image: DecorationImage(
                  image: NetworkImage(product.images[0]),
                  fit: BoxFit.contain,
                ),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 7),
          Text(
            product.name.length > 15
                ? '${product.name.substring(0, 15)}...'
                : product.name,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
          Text(
            "\$${product.price}",
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}
