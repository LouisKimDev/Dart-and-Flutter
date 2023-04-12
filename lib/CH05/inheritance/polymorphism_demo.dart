import 'dart:io';
import '../questions/questions.dart';
import 'choice_questions.dart';

void main() {
  // Create the question and choice question.
  Questions q = new Questions();
  ChoiceQuestions cq = new ChoiceQuestions();

  q.setQuestionText("Who is the inventor of Dart?");
  q.setQuestionAns("Lars Bak".toUpperCase());

  presentQuestion(q);

  cq.setQuestionText("In what year was the "
      "Dart introduced?");
  cq.addChoice("2015", false);
  cq.addChoice("2008", false);
  cq.addChoice("2012", true);
  cq.addChoice("2020", false);

  presentQuestion(cq);
}

void presentQuestion(Questions question) {
  // Display the question and obtain user's response.
  question.display();
  stdout.write("Your answer is: ");
  String response = stdin.readLineSync()!;
  print(question.checkAnswer(response.toUpperCase()));
}
