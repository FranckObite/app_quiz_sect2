import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {super.key, required this.resultScore, required this.resetHandler});
  final int resultScore;
  final VoidCallback resetHandler;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeabe!';
    } else if (resultScore <= 8) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
            onPressed: resetHandler, child: const Text("Restart Quiz!", style: TextStyle(color: Colors.blue),))
      ],
    ));
  }
}
