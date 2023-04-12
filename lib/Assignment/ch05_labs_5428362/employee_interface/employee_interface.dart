class Person {
  // person의 변수 선언
  String? name;
  int? age;

  // person name을 set, get
  set personName(String name) {}
  String get personName {
    return null!;
  }

  // person age를 set, get
  set personAge(int age) {}
  int get personAge {
    return null!;
  }
}

class Profession {
  // profession의 변수 선언
  String? profession;
  double? salary;

  // person profession을 set, get
  set personProfession(String prof) {}
  String get personProfession {
    return null!;
  }

  // person salary를 set, get
  set personSalary(double amount) {}
  double get personSalary {
    return null!;
  }
}
