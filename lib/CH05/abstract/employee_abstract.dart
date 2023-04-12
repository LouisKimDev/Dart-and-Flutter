abstract class Employee {
  void getEmpInfo();
}

class Manager extends Employee {
  //overriding method
  void getEmpInfo() {
    print("I'm Manager");
  }
}

class Engineer extends Employee {
  //overriding method
  void getEmpInfo() {
    print("I'm Engineer");
  }
}
