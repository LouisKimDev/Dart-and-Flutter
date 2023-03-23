import 'dart:io';

void main() {
  // CREATE TWO VARIABLES KEY AND VALUE
  var phoneBook1 = <String, String>{"Doyun": "01035614217"};
  var phoneBook2 = <String, String>{"Yallew": "01081085737"};
  String temp1;
  String temp2;

  // CREATE AN EMPTY MAP TO HOLD USER NAME AND PHONE NUMBER
  Map<String, String> phoneBook3 = {};

  // A. PROMPT USER TO TYPE USER NAME AND ASSIGN IT TO KEY
  print("Enter user name: ");
  temp1 = stdin.readLineSync()!;

  // B. PROMPT USER TO TYPE PHONE NUMBER AND ASSIGN IT TO VALUE
  print("Enter phone number: ");
  temp2 = stdin.readLineSync()!;

  // C. UPDATE THE MAP USING KEY AND VALUE THEN DISPLAY MAP
  phoneBook3.addAll({temp1: temp2});

  // DO A, B, AND C THREE TIMES
  print("Enter user name: ");
  temp1 = stdin.readLineSync()!;
  print("Enter phone number: ");
  temp2 = stdin.readLineSync()!;
  phoneBook3.addAll({temp1: temp2});

  print("Enter user name: ");
  temp1 = stdin.readLineSync()!;
  print("Enter phone number: ");
  temp2 = stdin.readLineSync()!;
  phoneBook3.addAll({temp1: temp2});

  print("Enter user name: ");
  temp1 = stdin.readLineSync()!;
  print("Enter phone number: ");
  temp2 = stdin.readLineSync()!;
  phoneBook3.addAll({temp1: temp2});

  // PROMPT USER WHICH NAME TO DELETE
  print("Enter user name to delete: ");
  temp1 = stdin.readLineSync()!;

  // DELETE THAT USER AND DISPLAY THE THE MAP
  phoneBook3.remove(temp1);
  print(phoneBook3);
}
