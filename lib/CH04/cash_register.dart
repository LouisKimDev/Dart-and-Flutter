class CashRegister {
  var totalPrice, itemCount;

  CashRegister.Both(this.totalPrice, this.itemCount);

  addItem(double price) {
    itemCount += 1;
    totalPrice += price;
  }
}

void main() {
  CashRegister reg1 = CashRegister.Both(0.0, 0);
}
