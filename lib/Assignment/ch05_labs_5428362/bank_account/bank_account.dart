/*
bank account
	ㄴsaving account
	ㄴchecking accout
 내 계좌에 있는 돈보다 많이 출금하려하면 exception handling해야함
*/
class BalanceNotEnough implements Exception {
  double _amount;
  BalanceNotEnough(this._amount);
  toString() {
    return "Balance not enough";
  }
}

class BankAccount {
  // person의 변수 선언
  int? number;
  double balance = 0;

  setbankaccountNum(int number) => this.number = number;
  int get bankaccountNum => number!;

  setbankaccountBal(double balance) => this.balance = balance;
  double get bankaccountBal => balance;

  void deopsit(double amount) {
    balance += amount;
    print("balance: $balance");
  }

  void withdraw(double amount) {
    try {
      amount > balance ? throw BalanceNotEnough(amount) : "";
      balance -= amount;
      print("balance: $balance");
    } catch (e) {
      print(e);
    }
  }

  void monthEnd() {
    print("balance: $balance");
  }
}
