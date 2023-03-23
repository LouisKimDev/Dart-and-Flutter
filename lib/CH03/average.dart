import 'dart:io';

void main() {
  int n, total;
  double average;
  List<int> grades = [];

  stdout.write("How many courses are you taking?");
  n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Grade of course ${i + 1} is :");
    grades.add(int.parse(stdin.readLineSync()!));
  }
  total = grades.reduce((a, b) => a + b);
  average = total / n;
  print("The grade are $grades");
  print("The sum of the gades is : $total");
  print("The average of the grades in : $average");
}
