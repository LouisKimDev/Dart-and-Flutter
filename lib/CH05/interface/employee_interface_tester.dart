import 'employee.dart';

main() {
  // Employee 객체는 employee_interface의
  // person class와 profession class를 포함하고 있다.
  Employee employee = new Employee();

  // employee 객체가 employee_interface의 method들을 implement함
  employee.personName = "Yalew";
  employee.personAge = 34;
  employee.profession = "Teacher";
  employee.salary = 20000.0;

  print("Dart Implementation of Multiple Interfaces");

  print("Name of Employee is: ${employee.personName}");
  print("Age of Employee is: ${employee.age}");
  print("Profession of Employee is: ${employee.profession}");
  print("Salary of Employee is: ${employee.salary}");
}
