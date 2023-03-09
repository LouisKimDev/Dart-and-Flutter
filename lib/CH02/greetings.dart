import 'dart:io';

void main() {
  String? name = "";

  print("Enter Your Name: ");
  name = stdin.readLineSync();

  print("Hello, $name");
}
