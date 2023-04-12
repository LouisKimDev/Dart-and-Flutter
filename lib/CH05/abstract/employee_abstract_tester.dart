import 'employee_abstract.dart';

void main() {
  Manager mng = Manager();
  Engineer eng = Engineer();
  print("Abstract Class Example. ");
  mng.getEmpInfo();
  eng.getEmpInfo();
}
