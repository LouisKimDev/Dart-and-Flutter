import '../Questions/questions.dart';

class ChoiceQuestions extends Questions {
  Set<String> choices = {};

  addChoices(String choice, bool correct) {
    choices.add(choice);

    if (correct) {
      int ansNum = choices.length;
      setQuestionAns(ansNum.toString());
    }
  }

  @override
  display() {
    super.display();

    for (int i = 0; i < choices.length; i++) {
      print("${i + 1} ${choices.elementAt(i)}");
    }
  }
}
