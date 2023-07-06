import 'package:flutter/material.dart';

class DeliveryWidget extends StatelessWidget {
  static const List<(String, String)> _deliveryOptions = [
    (
      'Next Day Delivery',
      'Place your order before 6pm and your items will be delivered the next day'
    ),
    ('Standard Delivery', 'Get your items in 3 working days'),
    ('Click & Collect', 'Pickup your order from our store within 3 days'),
  ];

  const DeliveryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        children: _deliveryOptions.map((element) {
          final (title, description) = element;
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                            fontSize: 16, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Radio(
                      groupValue: "option",
                      value: "1",
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class AddressWidget extends StatelessWidget {
  const AddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              const Text(
                'Billing address is the same as delivery address',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),

          // Delivery address
          const TextField(
            decoration: InputDecoration(
              labelText: 'Delivery address',
              hintText: 'Enter your delivery address',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Address 2',
              hintText: 'Enter your address 2',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: 'City',
              hintText: 'Enter your city',
            ),
          ),

          const Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'State',
                    hintText: 'Enter your state',
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Country',
                    hintText: 'Enter your country',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Cardholder name',
              hintText: 'Enter your cardholder name',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Card number',
              hintText: 'Enter your card number',
              suffixIcon: Icon(Icons.credit_card),
            ),
          ),
          const Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Expiry date',
                    hintText: 'Enter your expiry date',
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'CVV',
                    hintText: 'Enter your CVV',
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              const Text(
                'Save card details for future payments',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
