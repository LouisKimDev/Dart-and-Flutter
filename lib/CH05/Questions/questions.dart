class Questions {
  String? questionText, correctResponse;

  Question() {
    questionText = "";
    correctResponse = "";
  }

  setQuestionText(String qText) => questionText = qText;

  setQuestionAns(String aText) => correctResponse = aText;

  bool checkAnswer(String response) {
    return response == correctResponse;
  }

  display() => print(questionText);
}
