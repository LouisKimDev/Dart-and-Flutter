import 'bank_account.dart';

/*
이자를 주는 saving account
*/
class SavingAccount extends BankAccount {
  double interest = 0.03;

  @override
  void monthEnd() {
    balance += (balance * interest);
    super.monthEnd();
  }
}
