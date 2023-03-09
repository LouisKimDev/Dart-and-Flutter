import 'dart:io';

void main() {
  double pay;
  int hours;
  final rate = 5.0;

  stdout.write("How many hours did you work?: ");
  //print쓰면 다음줄로 넘어가지만 write쓰면 그줄에 머문다
  hours = int.parse(stdin.readLineSync()!);

  pay = hours * rate;

  stdout.write("You have earned\$ $pay");
}
