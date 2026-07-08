import 'questions.dart';

class Helper {
  int _questionNumber = 0;
  List<Question> _questionData = [
    Question(
        questionTitle:
            'Olá futuro bruxo(a)! Vamos descobrir qual é a casa ideal para você em Hogwarts? E a primeira questão é: com quais dos substantivos você se identifica mais?',
        choice1: 'Coragem e gentileza',
        choice2: 'Ambição e inteligência'),
    Question(
        questionTitle:
            'Você prefere quebrar as regras e conquistar algo de forma rápida ou prefere utilizar a inteligência e estudar para então conquistar?',
        choice1: 'Prefiro quebrar as regras',
        choice2: 'Utilizo a inteligência e estudos'),
    Question(
        questionTitle:
            'O que se encaixa melhor com o seu perfil?',
        choice1: 'Ousadia e astúcia',
        choice2: 'Paciência e sinceridade'),
    Question(
        questionTitle:
            'Você ficará muito bem aos cuidados da SONSERINA',
        choice1: 'Refazer teste',
        choice2: ''),
    Question(
        questionTitle:
            'Você ficará muito bem aos cuidados da LUFA-LUFA!',
        choice1: 'Refazer teste',
        choice2: ''),
    Question(
        questionTitle:
            'Você ficará muito bem aos cuidados da GRIFINÓRIA!',
        choice1: 'Refazer teste',
        choice2: ''),
    Question(
        questionTitle:
            'Você ficará muito bem aos cuidados da CORVINAL!',
        choice1: 'Refazer teste',
        choice2: '')
  ];

  String getQuestion() {
    return _questionData[_questionNumber].questionTitle;
  }

  String getChoice1() {
    return _questionData[_questionNumber].choice1;
  }

  String getChoice2() {
    return _questionData[_questionNumber].choice2;
  }

  void _reestart() {
    _questionNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return [0, 1, 2].contains(_questionNumber);
  }

  void nextQuestion(int userChoice) {
    if (_questionNumber >= 3 && _questionNumber <= 6) {
      _reestart();
      return;
    }

    _questionNumber =
        switch ((_questionNumber, userChoice)) {
      (0, 1) => 2,
      (2, 1) => 5,
      (2, 2) => 4,
      (0, 2) => 1,
      (1, 1) => 3,
      (1, 2) => 6,
      _ => _questionNumber,
    };
  }
}
