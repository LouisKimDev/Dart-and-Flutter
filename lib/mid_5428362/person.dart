class Person {
  String name;
  int year;
  Person(this.name, this.year);

  display() {
    print('$name, $year');
  }
}

class Student extends Person {
  String major;
  Student(super.name, super.year, this.major);

  @override
  display() {
    print('$name, $year, $major');
  }
}

class Instructor extends Person {
  int salary;
  Instructor(super.name, super.year, this.salary);

  @override
  display() {
    print('$name, $year, $salary');
  }
}
