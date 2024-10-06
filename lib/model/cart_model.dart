import 'package:flutter/material.dart';

class Cart_Model extends ChangeNotifier {
  final List _shopItem = [
    ['Avocado', '4.00', 'lib/images/avocado.png', Colors.green],
    ['Banana', '2.50', 'lib/images/banana.png', Colors.yellow],
    ['Chicken', '12.80', 'lib/images/chicken.png', Colors.brown],
    ['Water', '1.00', 'lib/images/water.png', Colors.blue],
  ];

  List _cartItem = [];

  get shopItems => _shopItem;
  get cartItem => _cartItem;

  void addItemtoCart(int index) {
    _cartItem.add(_shopItem[index]);
    notifyListeners();
  }

  void removeItemfromCart(int index) {
    _cartItem.remove(_shopItem[index]);
    notifyListeners();
  }

  String calculateTotalPrice() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItem.length; i++) {
      totalPrice += double.parse(_cartItem[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
