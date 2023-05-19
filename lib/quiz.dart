import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    super.key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  final List<Map<String, dynamic>> questions;

  final int questionIndex;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Question(
            questionText: questions[questionIndex]['questionText'] as String,
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
              .map((answer) {
            return Answer(
                () => answerQuestion(answer['score']), answer['text']);
          }).toList()
        ],
      ),
    );
  }
}
