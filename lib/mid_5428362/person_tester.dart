import 'dart:developer';
import 'dart:io';

import 'person.dart';

void main() {
  Person person = Person("Doyun", 1997);
  Student student = Student("Kim", 1998, "EE");
  Instructor instructor = Instructor("Zee", 1996, 9999);

  person.display();
  student.display();
  instructor.display();
}
