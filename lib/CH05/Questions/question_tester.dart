import 'dart:io';
import 'questions.dart';

main() {
  Questions q = Questions();

  q.setQuestionText("Who is the inventor of Dart?");
  q.setQuestionAns("Lars Bak".toUpperCase());

  q.display();
  stdout.write("Your answer is: ");
  String response = stdin.readLineSync()!;
  if (q.checkAnswer(response.toUpperCase()))
    print("Correct");
  else
    print("Incorrect");
}
