import 'package:flutter/material.dart';
import 'coffee.dart';
class CoffeeShop extends ChangeNotifier{
  final List<Coffee>_shop = [
    Coffee(
        name: "Long Black",
        price: "10.00",
        imagePath: "lib/images/coffee.png",
    ),
    Coffee(
      name: "Espresso",
      price: "15.00",
      imagePath: "lib/images/espresso.png",
    ),
    Coffee(
      name: "Iced Coffee",
      price: "10.00",
      imagePath: "lib/images/iced-coffee.png",
    ),
    Coffee(
      name: "Latte",
      price: "20.00",
      imagePath: "lib/images/latte.png",
    ),
  ];
List<Coffee> _userCart = [];
List<Coffee> get coffeeShop => _shop;
List<Coffee> get userCart => _userCart;
void addItemToCart(Coffee coffee){
  _userCart.add(coffee);
  notifyListeners();
}
void removeItemFromCart(Coffee coffee){
  _userCart.remove(coffee);
  notifyListeners();
  }
}