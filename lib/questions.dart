class Question {
  String questionTitle = '';
  String choice1 = '';
  String choice2 = '';

  // Helper(String choice1, String choice2) {
  //   _choice1 = choice1;
  //   _choice2 = choice2;
  // }
  // Question({
  //   required String questionTitle,
  //   required String choice1,
  //   required String choice2,
  // }) {
  //   _questionTitle = questionTitle;
  //   _choice1 = choice1;
  //   _choice2 = choice2;
  // }
  Question(
      {required this.questionTitle,
      required this.choice1,
      required this.choice2});
}
