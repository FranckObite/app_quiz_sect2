import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "Que signifie NAN?",
      'answers': [
        {'text': 'Not A Number', 'score': 1},
        {'text': 'Non Aux Noix', 'score': 0},
        {'text': 'Non A Number ', 'score': 0},
        {'text': 'Num As Num  ', 'score': 0}
      ],
    },
    {
      'questionText': "La capital de la CI est: ",
      'answers': [
        {'text': 'Paris', 'score': 0},
        {'text': 'Acra', 'score': 0},
        {'text': 'Abidjan ', 'score': 1},
        {'text': 'Madrid  ', 'score': 0}
      ],
    },
    {
      'questionText': "qu'est ce que Flutter?",
      'answers': [
        {'text': 'Rabbit', 'score': 0},
        {'text': 'Snake', 'score': 0},
        {'text': 'SDK....', 'score': 1},
        {'text': 'Lion', 'score': 0}
      ],
    },
    {
      'questionText': "où se trouve la status de la liberté?",
      'answers': [
        {'text': 'Yamoussoukro', 'score': 0},
        {'text': 'Paris', 'score': 0},
        {'text': 'New-York ', 'score': 1},
        {'text': 'Num As Num  ', 'score': 0}
      ],
    },
    {
      'questionText': "qui est le père de la paroise Saint-Flutter de NAN?",
      'answers': [
        {'text': 'Père Marc', 'score': 0},
        {'text': 'Père Julien', 'score': 0},
        {'text': 'Père SAMDIOM', 'score': 1},
        {'text': 'Père Fabien', 'score': 0}
      ],
    },
  ];
  int monNiveau = 1;

  final Map<String, List<Map<String, dynamic>>> _allLevel = {
    'niveau1': [
      {
        'questionText': "Que signifie NAN?",
        'answers': [
          {'text': 'Not A Number', 'score': 1},
          {'text': 'Non Aux Noix', 'score': 0},
          {'text': 'Non A Number ', 'score': 0},
          {'text': 'Num As Num  ', 'score': 0}
        ],
      },
      {
        'questionText': "La capital de la CI est: ",
        'answers': [
          {'text': 'Paris', 'score': 0},
          {'text': 'Acra', 'score': 0},
          {'text': 'Abidjan ', 'score': 1},
          {'text': 'Madrid  ', 'score': 0}
        ],
      },
      {
        'questionText': "qu'est ce que Flutter?",
        'answers': [
          {'text': 'Rabbit', 'score': 0},
          {'text': 'Snake', 'score': 0},
          {'text': 'SDK....', 'score': 1},
          {'text': 'Lion', 'score': 0}
        ],
      },
      {
        'questionText': "où se trouve la status de la liberté?",
        'answers': [
          {'text': 'Yamoussoukro', 'score': 0},
          {'text': 'Paris', 'score': 0},
          {'text': 'New-York ', 'score': 1},
          {'text': 'Num As Num  ', 'score': 0}
        ],
      },
      {
        'questionText': "qui est le père de la paroise Saint-Flutter de NAN?",
        'answers': [
          {'text': 'Père Marc', 'score': 0},
          {'text': 'Père Julien', 'score': 0},
          {'text': 'Père SAMDIOM', 'score': 1},
          {'text': 'Père Fabien', 'score': 0}
        ],
      },
    ],
    'niveau2': [
      {
        'questionText': "1 + 1 =",
        'answers': [
          {'text': '0', 'score': 0},
          {'text': '2', 'score': 1},
          {'text': '11', 'score': 0},
          {'text': '1  ', 'score': 0}
        ],
      },
      {
        'questionText': "5+5*5=",
        'answers': [
          {'text': '30', 'score': 1},
          {'text': '50', 'score': 0},
          {'text': '13 ', 'score': 1},
          {'text': '5  ', 'score': 0}
        ],
      },
      {
        'questionText': "9*9=",
        'answers': [
          {'text': '81', 'score': 1},
          {'text': '18', 'score': 0},
          {'text': '9....', 'score': 1},
          {'text': '99', 'score': 0}
        ],
      },
      {
        'questionText': "25/5=",
        'answers': [
          {'text': '25', 'score': 0},
          {'text': '7', 'score': 0},
          {'text': '5', 'score': 1},
          {'text': '10', 'score': 0}
        ],
      },
      {
        'questionText': "18+...=20",
        'answers': [
          {'text': '0', 'score': 0},
          {'text': '2', 'score': 1},
          {'text': '8', 'score': 0},
          {'text': '1', 'score': 0}
        ],
      },
    ],
    'niveau3': [
      {
        'questionText': "Que signifie NAN?",
        'answers': [
          {'text': 'Not A Number', 'score': 1},
          {'text': 'Non Aux Noix', 'score': 0},
          {'text': 'Non A Number ', 'score': 0},
          {'text': 'Num As Num  ', 'score': 0}
        ],
      },
      {
        'questionText': "La capital de la CI est: ",
        'answers': [
          {'text': 'Paris', 'score': 0},
          {'text': 'Acra', 'score': 0},
          {'text': 'Abidjan ', 'score': 1},
          {'text': 'Madrid  ', 'score': 0}
        ],
      },
      {
        'questionText': "qu'est ce que Flutter?",
        'answers': [
          {'text': 'Rabbit', 'score': 0},
          {'text': 'Snake', 'score': 0},
          {'text': 'SDK....', 'score': 1},
          {'text': 'Lion', 'score': 0}
        ],
      },
      {
        'questionText': "où se trouve la status de la liberté?",
        'answers': [
          {'text': 'Yamoussoukro', 'score': 0},
          {'text': 'Paris', 'score': 0},
          {'text': 'New-York ', 'score': 1},
          {'text': 'Num As Num  ', 'score': 0}
        ],
      },
      {
        'questionText': "qui est le père de la paroise Saint-Flutter de NAN?",
        'answers': [
          {'text': 'Père Marc', 'score': 0},
          {'text': 'Père Julien', 'score': 0},
          {'text': 'Père SAMDIOM', 'score': 1},
          {'text': 'Père Fabien', 'score': 0}
        ],
      },
    ],
  };

  var _questionIndex = 0;
  var _totalScore = 0;
  var _totalScore2 = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;

      if (monNiveau == 1 && _totalScore2 < 5) {
        _totalScore2 = 0;
      } else if (monNiveau == 2 && _totalScore2 < 10) {
        _totalScore2 = 5;
      } else if (monNiveau == 3 && _totalScore2 < 15) {
        _totalScore2 = 10;
      }
      
      if (monNiveau == 1 && _totalScore2 >= 15) {
        _totalScore2 = _totalScore2 - _totalScore;
      } else if (monNiveau == 2 && _totalScore2 >= 15) {
        _totalScore2 = _totalScore2 - _totalScore;
      } else if (monNiveau == 3 && _totalScore2 >= 15) {
        _totalScore2 = _totalScore2 - _totalScore;
      }
      _totalScore = 0;
    });
  }

  void _quizSuivant() {
    setState(() {
      if (monNiveau <= 3) {
        monNiveau++;
      } else {}
      _questionIndex = 0;

      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    _totalScore2 = _totalScore2 + score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("Whe have more question!");
    } else {
      print("No more question:");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My First App"),
          ),
          endDrawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  child: Container(),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      setState(() {
                        if (_totalScore2 < 15) {
                          monNiveau = 1;
                          _questionIndex = 0;
                          _totalScore = 0;
                          _totalScore2 = 0;
                        } else {
                          monNiveau = 1;
                          _questionIndex = 0;
                          _totalScore = 0;
                        }
                      });
                    });
                  },
                  title: const Text("Niveau 1"),
                  subtitle: _totalScore2 < 5
                      ? const Text(
                          "pas terminé",
                          style: TextStyle(color: Colors.red, fontSize: 13),
                        )
                      : const Text(
                          "Niveau terminé",
                          style: TextStyle(color: Colors.green, fontSize: 13),
                        ),
                  leading: const Icon(Icons.gamepad),
                  trailing: _totalScore2 < 5
                      ? const Icon(Icons.question_mark, color: Colors.red)
                      : const Icon(Icons.check, color: Colors.green),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      setState(() {
                        if (_totalScore2 >= 5) {
                          monNiveau = 2;
                          _questionIndex = 0;
                          _totalScore = 0;
                        }
                      });
                    });
                  },
                  title: const Text("Niveau 2"),
                  subtitle: _totalScore2 < 9
                      ? const Text(
                          "pas terminé",
                          style: TextStyle(color: Colors.red, fontSize: 13),
                        )
                      : const Text(
                          "Niveau terminé",
                          style: TextStyle(color: Colors.green, fontSize: 13),
                        ),
                  leading: const Icon(Icons.gamepad),
                  trailing: _totalScore2 < 9
                      ? const Icon(Icons.question_mark, color: Colors.red)
                      : const Icon(Icons.check, color: Colors.green),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      if (_totalScore2 >= 10) {
                        monNiveau = 3;
                        _questionIndex = 0;
                        _totalScore = 0;
                      }
                    });
                  },
                  title: const Text("Niveau 3"),
                  subtitle: _totalScore2 < 14
                      ? const Text(
                          "pas terminé",
                          style: TextStyle(color: Colors.red, fontSize: 13),
                        )
                      : const Text(
                          "Niveau terminé",
                          style: TextStyle(color: Colors.green, fontSize: 13),
                        ),
                  leading: const Icon(Icons.gamepad),
                  trailing: _totalScore2 < 14
                      ? const Icon(Icons.question_mark, color: Colors.red)
                      : const Icon(Icons.check, color: Colors.green),
                )
              ],
            ),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Text("Niveau de Jeux: $monNiveau"),
                  const Spacer(),
                  Text('Score du niveau: $_totalScore'),
                  const Spacer(),
                  Text('Score: $_totalScore2'),
                ],
              ),
              _questionIndex < _questions.length
                  ? Quiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _allLevel["niveau$monNiveau"]!,
                    )
                  : Result(
                      resultScore: _totalScore,
                      resetHandler: _resetQuiz,
                      quizSuivant: _quizSuivant,
                      monNiveau: monNiveau,
                      scoreTotal: _totalScore2,
                    )
            ],
          )),
    );
  }
}
