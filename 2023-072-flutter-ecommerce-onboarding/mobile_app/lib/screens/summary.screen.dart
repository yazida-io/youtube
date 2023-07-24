import 'package:flutter/material.dart';
import 'package:mobile_app/models/cart.model.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class SummaryScreen extends StatefulWidget {
  static const routeName = 'summary';

  const SummaryScreen({super.key});

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary'),
      ),
      body: Center(
        child: Consumer<Cart>(
          builder: (context, cart, child) {
            return ListView(
              children: [
                SizedBox(
                  height: 250,
                  child: Center(
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: cart.products.map(
                          (record) {
                            final (product, _) = record;
                            return Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(10),
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(product.images.first),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  product.name.length > 10
                                      ? '${product.name.substring(0, 10)}...'
                                      : product.name,
                                ),
                                Text(
                                  '\$${product.price}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ],
                            );
                          },
                        ).toList()),
                  ),
                ),
                const Divider(),
                ListTile(
                  title: const Text('Total'),
                  trailing: Text('\$${cart.total}'),
                ),
                const Divider(),
                const ListTile(
                  title: Text('Delivery'),
                  trailing: Text('Free'),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Address',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: const Text(
                                      "21, Alex Davidson Avenue, Opposite Omegatron, Vicent Smith Quarters, Victoria Island, Lagos, Nigeria",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 100,
                            height: 100,
                            child: Icon(
                              Icons.check_circle,
                              size: 50,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Change'),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.payment_outlined,
                                    size: 90,
                                    color: Colors.deepPurple,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: TextFormField(
                                      initialValue: '**** **** **** 1234',
                                      decoration: const InputDecoration(
                                        hintText: 'Card Number',
                                        labelText: 'Card Number',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 100,
                            height: 100,
                            child: Icon(
                              Icons.check_circle,
                              size: 50,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Change'),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                      padding: const EdgeInsets.all(20),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                          title: Text('Order Placed'),
                          content:
                              Text('Your order has been placed successfully'),
                        ),
                      ).then((value) {
                        cart.clear();
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          MainScreen.routeName,
                          (route) => false,
                        );
                      });
                    },
                    child: const Text('Place Order',
                        style: TextStyle(fontSize: 20)),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
