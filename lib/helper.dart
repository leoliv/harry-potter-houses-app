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

  void reestart() {
    _questionNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return [0, 1, 2].contains(_questionNumber);
  }

  void nextQuestion(int userChoice) {
    if (_questionNumber == 0 && userChoice == 1) {
      _questionNumber = 2;
      return;
    }

    if (_questionNumber == 2 && userChoice == 1) {
      _questionNumber = 5;
      return;
    }

    if (_questionNumber == 2 && userChoice == 2) {
      _questionNumber = 4;
      return;
    }
    if (_questionNumber == 0 && userChoice == 2) {
      _questionNumber = 1;
      return;
    }
    if (_questionNumber == 1 && userChoice == 1) {
      _questionNumber = 3;
      return;
    }
    if (_questionNumber == 1 && userChoice == 2) {
      _questionNumber = 6;
      return;
    }

    switch (_questionNumber) {
      case 3:
      case 4:
      case 5:
      case 6:
        reestart();
        break;
      default:
    }
  }
}
