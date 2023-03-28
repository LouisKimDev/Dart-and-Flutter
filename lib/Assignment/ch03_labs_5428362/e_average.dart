// This program computes the sum and average of grades
import 'dart:io';

void main() {
  // Declaring appropriate variable to store valuse
  int n;
  double average, max = 0, min = 0, total;
  List<double> grades = [];

  // Prompt user as to how many courses they are taking
  stdout.write("How many courses are you taking? ");
  n = int.parse(stdin.readLineSync()!);

  // For loop to get grades of each course, min and max
  for (int i = 0; i < n; i++) {
    stdout.write("Grade of course ${i + 1} is: ");
    grades.add(double.parse(stdin.readLineSync()!));
    grades[i] > max ? max = grades[i] : 0;
    i == 0
        ? min = grades[i]
        : grades[i] < min
            ? min = grades[i]
            : 0;
  }
  total = grades.reduce((a, b) => a + b); // calculating total
  average = total / n; // calculating average
  // Displaying the result
  print("The grades are $grades");
  print("The sum of the grades is: $total");
  print("The average of the grades is: $average");
  print("The maximum of the grades is: $max");
  print("The minimum of the grades is: $min");
}
