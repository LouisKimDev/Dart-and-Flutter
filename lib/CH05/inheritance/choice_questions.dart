import '../Questions/questions.dart';

class ChoiceQuestions extends Questions {
  // To store multiple choices for the question
  Set<String> choices = {};

  /// Adds an answer choice to this question.
  /// @param choice the choice to add
  /// @param correct True if this is the correct choice,
  ///                False otherwise*/
  void addChoice(String choice, bool correct) {
    choices.add(choice);

    if (correct) {
      /* When choice is correct, convert ansNum to string
      *  then set it as an answer*/
      int ansNum = choices.length;
      setQuestionAns(ansNum.toString());
    }
  }

  // Override Question.display().
  void display() {
    //Display the question text.
    super.display();

    // Display the answer choices.
    for (int i = 0; i < choices.length; i++) {
      print("${i + 1}. ${choices.elementAt(i)}");
    }
  }
}
