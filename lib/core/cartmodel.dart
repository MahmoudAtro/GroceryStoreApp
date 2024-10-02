import 'package:flutter/material.dart';
import 'package:modernlogintute/core/utils/assets.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = [
    // [ itemName, itemPrice, imagePath, color ]
    ["Avocado", "4.00", avocadopath, Colors.green, 1],
    ["Banana", "2.50", bananapath, Colors.yellow, 1],
    ["Chicken", "12.80", chickenpath, Colors.brown, 1],
    ["Water", "1.00", waterpath, Colors.blue, 1],
  ];

  // list of cart items
  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    bool productExists = _cartItems.any(
      (item) => item[0] == _shopItems[index][0],
    );
    if (!productExists) {
      _cartItems.add(_shopItems[index]);
      notifyListeners();
    } else {
      // increment quantity of existing item
      _cartItems[index][4] += 1;
      notifyListeners();
    }
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]) * cartItems[i][4];
    }
    return totalPrice.toStringAsFixed(2);
  }
}
