import 'bank_account.dart';

// 이자가 없는 checking account
// 1달 3번까지 무료 출금, 이후엔 출금마다 1달러 수수료
class CheckingAccount extends BankAccount {
  int withdrawCnt = 3;
  double withdrawFee = 1.0;

  @override
  void withdraw(double amount) {
    withdrawCnt -= 1;
    try {
      amount > balance ? throw BalanceNotEnough(amount) : "";
      if (withdrawCnt < 0) {
        balance -= withdrawFee;
        balance -= amount;
      } else {
        balance -= amount;
      }
      print("balance: $balance");
      print("balance: $balance");
    } catch (e) {
      print(e);
    }
  }

  @override
  void monthEnd() {
    withdrawCnt = 3;
    super.monthEnd();
  }
}
