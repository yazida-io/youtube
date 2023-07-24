import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:tutorial/models/product.model.dart';

class Cart extends ChangeNotifier {
  final List<Product> _products = [];

  UnmodifiableListView<Product> get products => UnmodifiableListView(_products);

  void add(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void remove(Product product) {
    _products.remove(product);
    notifyListeners();
  }
}