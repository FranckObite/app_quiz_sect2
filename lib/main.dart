/* import 'package:completed_app/firebase/authentification.dart'; */
/* import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart'; */

import 'package:flutter/material.dart';

/* import 'firebase/home.dart'; 
import 'firebase/services/auth.dart'; */

import 'quiz.dart';
import 'result.dart';

void main() /* async */ {
  /* WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); */
  runApp(const MyApp());
}

/* class MonApp extends StatelessWidget {
  const MonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: StreamBuilder<User?>(
          stream: AuthService().userChanged,
          builder: (context, snapshot) {
            return snapshot.data != null
                ? const HomePage2()
                : const LoginPage();
          }),
    );
  }
} */

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What's you favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': "what's your favorite animal?",
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ],
    },
    {
      'questionText': "Who's your favorite insctructor?",
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(
                  resultScore: _totalScore,
                  resetHandler: _resetQuiz,
                )),
    );
  }
}
