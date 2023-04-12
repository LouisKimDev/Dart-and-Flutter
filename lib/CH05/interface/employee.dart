import 'package:fl_5428362/CH05/interface/employee_interface.dart';

class Employee implements Person, Profession {
  // person age를 set, get
  @override
  int? age;
  @override
  set personAge(int age) => this.age = age;
  @override
  int get personAge {
    return this.age!;
  }

  // person name을 set, get
  @override
  String? name;
  @override
  set personName(String name) => this.name = name;
  @override
  String get personName {
    return this.name!;
  }

  // person profession을 set,get
  @override
  String? profession;
  @override
  set personProfession(String prof) => this.profession = prof;
  @override
  String get personProfession {
    return this.profession!;
  }

  // person salary를 set, get
  @override
  double? salary;
  @override
  set personSalary(double salary) => this.salary = salary;
  @override
  double get personSalary {
    return this.salary!;
  }
}
