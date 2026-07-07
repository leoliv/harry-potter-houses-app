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
    return _questionData[0].questionTitle;
  }

  String getChoice1() {
    return _questionData[0].choice1;
  }

  String getChoice2() {
    return _questionData[0].choice2;
  }

  void nextQuestion(int userChoice) {}
}


//TODO: Passo 23 - Use o questionNumber,  dentro do getQuestion(), do getChoice1() e do getChoice2() para obter as opções atualizadas ao invés de sempre receber a primeira questão.

//TODO: Passo 25 - Altere a propriedade questionNumber para que esta seja privada, assim somente o helper.dart terá acesso direto a ela. Dica: você pode fazer isso clicando com o botão direito do mouse sobre o nome (questionNumber) e então selecionando a opção Refactor e na sequência Rename. Isso fará com que as alterações sejam aplicadas no escopo inteiro do projeto, ou seja, em todo local que está propriedade está sendo utilizada.

//TODO: Passo 17 - Crie um método chamado nextQuestion. Ele não retornará nada inicialmente, porém, ele deve receber como parâmetro um inteiro que pode ser chamado de userChoice e que receberá um número que representa a escolha do usuário.

//TODO: Passo 20 - Faça download do fluxograma com as sequências para os possíveis resultados: https://drive.google.com/file/d/1vOI-Jr0Brp1LIQ7CDB8Y03PykWhWBmA2

//TODO: Passo 21 - Utilizando o fluxograma que você baixou modifique o método nextQuestion() para alterar o questionNumber de acordo com a escolha(choice) feita pelo usuário.

//TODO: Passo 22 - No método nextQuestion se a questionNumber for igual a 3,4,5 ou 6 o usuário chegou ao final das questões e recebeu a resposta de qual casa é mais parecida com o perfil dele. Faça então uma chamada para um método restart() que servirá para reiniciar as questões modificando o valor de questionNumber para 0 (zero)

//TODO: Passo 27 - Crie um método chamado buttonShouldBeVisible() que irá checar se o questionNumber é 0, 1 ou 2. Se ess for o caso, o método deverá retornar true indicando que os dois botões mostram uma opção. Caso contrário deverá ser retornado false.

