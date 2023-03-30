import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

// await을 쓰면 task2,3가 callback의 스택에 쌓여서 순서대로 처리 됨
// 서버에서 랜더링이 완료되기 전에 화면이 표시되는거 방지하기 위해 사용
Future task2() async {
  String result = "";
  await Future.delayed(const Duration(seconds: 5), () {
    result = 'task 2 data';
    print('Task 2 Complete');
  });
  return result;
}

void task3(task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete $task2Data');
}
