import 'dart:io';
import 'bank_account.dart';
import 'saving_account.dart';
import 'checking_account.dart';

/*
메뉴 : D)eposit W)ithdraw M)onth end Q)uit
deposit, withdraw : 계좌번호와 잔액을 물어봄. 입/출금 이후에 잔액을 출력함
month end후에, account type에 따라 이자를 쌓거나 거래 내역을 삭제함. 그리고 모든 계좌의 잔액 출력
*/
void main() {
  BankAccount ba = BankAccount();
  ba.setbankaccountNum(1);
  ba.setbankaccountBal(100.0);
  SavingAccount sa = SavingAccount();
  sa.setbankaccountNum(2);
  sa.setbankaccountBal(100.0);
  CheckingAccount ca = CheckingAccount();
  ca.setbankaccountNum(3);
  ca.setbankaccountBal(100.0);

  String temp1 = '';
  int? temp2;
  double? amount;
  bool key = true;
  print("account number: 1 - BankAccount 2 - SavingAccount, 3 - CheckAccount");
  print("default balance : 100.0");
  while (key) {
    print("----Choose a task----");
    print("         D)eposit");
    print("         W)ithdraw");
    print("         M)onth end");
    print("         Q)uit");
    do {
      stdout.write("Choose a valid menu: ");
      temp1 = stdin.readLineSync()!;
      temp1 = temp1.toUpperCase();
    } while (temp1 != 'D' && temp1 != 'W' && temp1 != 'M' && temp1 != 'Q');
    switch (temp1) {
      case 'D':
        {
          print("Enter account number: ");
          temp2 = int.parse(stdin.readLineSync()!);
          print("Enter amount to deposit: ");
          amount = double.parse(stdin.readLineSync()!);
          switch (temp2) {
            case 1:
              ba.deopsit(amount);
              break;
            case 2:
              sa.deopsit(amount);
              break;
            case 3:
              ca.deopsit(amount);
              break;
          }
          break;
        }

      case 'W':
        {
          print("Enter account number: ");
          temp2 = int.parse(stdin.readLineSync()!);
          print("Enter amount to withdraw: ");
          amount = double.parse(stdin.readLineSync()!);
          switch (temp2) {
            case 1:
              ba.withdraw(amount);
              break;
            case 2:
              sa.withdraw(amount);
              break;
            case 3:
              ca.withdraw(amount);
              break;
          }
          break;
        }

      case 'M':
        {
          stdout.write("bank account balance : ");
          ba.monthEnd();
          stdout.write("saving account balance : ");
          sa.monthEnd();
          stdout.write("checking account balance : ");
          ca.monthEnd();
          break;
        }
      case 'Q':
        {
          key = false;
          print("Quit");
          break;
        }
    }
  }
}
