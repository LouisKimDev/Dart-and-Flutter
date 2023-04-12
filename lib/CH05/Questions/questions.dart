/// This module defines a class that models exam questions.
/// A question with a text and an answer. */
class Questions {
  //Variables to store question and answer texts
  String? questionText, correctResponse;

  //Constructs a question with empty question and answer strings.
  Questions([this.questionText, this.correctResponse]);

  /// Sets the question text.
  ///@param questionText the text of this question*/
  setQuestionText(String qText) => questionText = qText;

  /// Sets the answer for this question.
  /// @param correctResponse the answer*/
  setQuestionAns(String aText) => correctResponse = aText;

  /// Checks a given response for correctness
  /// @param response the response to check
  /// @return True if the response was correct, False otherwise*/
  bool checkAnswer(String response) {
    return response == correctResponse;
  }

  //Displays this question.
  display() => print(questionText);
}
