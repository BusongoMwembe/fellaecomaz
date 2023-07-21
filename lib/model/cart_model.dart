import 'package:flutter/material.dart';
class CartModel extends ChangeNotifier{
  // list of cart items
  final List _shopItems=[
    [ "bananas","4.00", "lib/images/banana.png" ,Colors.yellow],
    [ "Carrots","6.00", "lib/images/carrots.png",Colors.red],
    [ "Vegs","2.00",    "lib/images/vegs.png",Colors.green],
  ];

  // list of cart items on sale
  List _cartItems=[];
  get shopItems=>_shopItems;
  get cartItems=>_cartItems;

  // add itemsto cart
void addToCart(int index){
  _cartItems.add(_shopItems[index]);
  notifyListeners();
}
// remove items from cat
void removeItemFromCart(int index){
  _cartItems.removeAt(index);
  notifyListeners();

}

// calculate totalprice

 String calcTotalPrice(){
  double totalPrice=0;
  for(int i=0; i<cartItems.length; i++){
    totalPrice +=double.parse(_cartItems[i][1]);
  }
  return totalPrice.toStringAsFixed(2);

 }

}