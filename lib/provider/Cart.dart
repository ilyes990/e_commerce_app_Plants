// ignore_for_file: file_names

import 'package:ecommerce_app_level3/pages/home.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  double price = 0;
  List selectedProducts = [];

  deletefromcart(Plants product) {
    selectedProducts.remove(product);
    price -= product.price.round();
    notifyListeners();
  }

  addtoCart(Plants product) {
    selectedProducts.add(product);
    price += product.price.round();
    notifyListeners();
  }
}
