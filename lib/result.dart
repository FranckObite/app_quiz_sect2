import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result(
      {super.key,
      required this.resultScore,
      required this.resetHandler,
      required this.quizSuivant,
      required this.monNiveau,
      required this.scoreTotal});
  final int resultScore;
  final VoidCallback resetHandler;
  final VoidCallback quizSuivant;
  final int monNiveau;
  final int scoreTotal;

  var leScore = 5;

  String get resultPhrase {
    String resultText;
    if (resultScore < leScore) {
      resultText = 'Desolé cher amis';
    } else {
      resultText = 'Félicitation papah!';
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
        resultScore < leScore
            ? TextButton(
                onPressed: resetHandler,
                child: const Text(
                  "Restart Quiz!",
                  style: TextStyle(color: Colors.blue),
                ))
            : monNiveau == 3 && scoreTotal >= 15
                ? const Text(
                    "Vous avez débloqué tous les niveau Utilisez le boutton bugger pour naviger entre tous les niveaux. ",
                    style: TextStyle(color: Colors.blue),
                  )
                : TextButton(
                    onPressed: quizSuivant,
                    child: const Text(
                      "Aller au quiz suivant!",
                      style: TextStyle(color: Colors.blue),
                    ))
      ],
    ));
  }
}
