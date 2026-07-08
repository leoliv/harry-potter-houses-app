import 'package:flutter/material.dart';
import 'package:harry_potter_houses_starting/helper.dart';

void main() => runApp(HarryPotterHouses());

class HarryPotterHouses extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HarryPoterPage(),
    );
  }
}

Helper helper = Helper();

class HarryPoterPage extends StatefulWidget {
  _HarryPoterPageState createState() =>
      _HarryPoterPageState();
}

class _HarryPoterPageState extends State<HarryPoterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage('imagens/harrypotter.jpg'),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 120),
                    child: Text(
                      helper.getQuestion(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    //Escolha (choice) 1 feita pelo usuário.
                    setState(() {
                      helper.nextQuestion(1);
                    });
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green),
                  child: Text(
                    helper.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: helper.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      //Escolha (choice) 2 feita pelo usuário.
                      setState(() {
                        helper.nextQuestion(2);
                      });
                    },
                    style: TextButton.styleFrom(
                        backgroundColor:
                            Colors.deepPurpleAccent),
                    child: Text(
                      helper.getChoice2(),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
