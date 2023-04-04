import 'package:flutter/material.dart';

class CashRegister {
  var totalPrice, itemCount;

  CashRegister(this.totalPrice, this.itemCount) {
    totalPrice = 0.0;
    itemCount = 0;
  }

  addItem(double price) {
    itemCount += 1;
    totalPrice += price;
  }

  getCount() {
    return itemCount;
  }

  getTotal() {
    return totalPrice;
  }

  clear() {
    totalPrice = 0.0;
    itemCount = 0;
  }
}

void main() {
  //Create an object of CashRegister
  CashRegister register1 = CashRegister(0.0, 0);

  //Add items to register
  register1.addItem(1.95);
  register1.addItem(0.95);
  register1.addItem(2.50);

  //Check if expected and actual result is the same
  print(register1.getCount());
  print("Expected is: 3");
  print(register1.getTotal());
  print("Expected is: 5.40");

  //Clear register
  register1.clear();
}
