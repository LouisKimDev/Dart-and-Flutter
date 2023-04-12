import 'dart:io';
import 'choice_questions.dart';

void main() {
  // Create the question and expected answer.
  ChoiceQuestions cq = ChoiceQuestions();

  cq.setQuestionText("In what year was the "
      "Dart introduced?");
  cq.addChoice("2015", false);
  cq.addChoice("2008", false);
  cq.addChoice("2012", true);
  cq.addChoice("2020", false);

  // Display the question and obtain user's response.
  cq.display();
  stdout.write("Your answer is: ");
  String response = stdin.readLineSync()!;
  print(cq.checkAnswer(response.toUpperCase()));
}
