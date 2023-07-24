import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:mobile_app/models/product.model.dart';

class Cart extends ChangeNotifier {
  final List<(Product, int)> shoppingCart = [];

  UnmodifiableListView<(Product, int)> get products =>
      UnmodifiableListView(shoppingCart);

  void add(Product product) {
    final index = shoppingCart.indexWhere((element) {
      var (p, _) = element;
      return p.code == product.code;
    });

    if (index >= 0) {
      var (p, q) = shoppingCart[index];
      shoppingCart[index] = (p, q + 1);
    } else {
      shoppingCart.add((product, 1));
    }

    notifyListeners();
  }

  void remove(Product product) {
    final index = shoppingCart.indexWhere((element) {
      var (p, _) = element;
      return p.code == product.code;
    });

    if (index >= 0) {
      var (p, q) = shoppingCart[index];
      if (q > 1) {
        shoppingCart[index] = (p, q - 1);
      } else {
        shoppingCart.removeAt(index);
      }
    }

    notifyListeners();
  }

  removeProduct(Product product) {
    shoppingCart.removeWhere((element) {
      var (p, _) = element;
      return p.code == product.code;
    });
    notifyListeners();
  }

  toggleFavorite(Product product) {
    final index = shoppingCart.indexWhere((element) {
      var (p, _) = element;
      return p.code == product.code;
    });

    if (index >= 0) {
      var (p, q) = shoppingCart[index];
      p.favorite = !p.favorite;
      shoppingCart[index] = (p, q + 1);
    }

    notifyListeners();
  }

  double get total {
    var total = 0.0;

    for (var element in shoppingCart) {
      var (p, q) = element;
      total += double.parse("${p.price}") * q;
    }

    return total;
  }

  void clear() {
    shoppingCart.clear();
    notifyListeners();
  }
}
