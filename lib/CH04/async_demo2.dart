import 'dart:io';

void main() {
  performTasks();
}

void performTasks() {
  task1();
  String task2Result = task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

String task2() {
  String result = "";
  Future.delayed(const Duration(seconds: 5), () {
    result = 'task 2 data';
    print('Task 2 Complete');
  });
  return result;
}

void task3(task2Result) {
  String result = 'task 3 data';
  print('Task 3 complete');
}
