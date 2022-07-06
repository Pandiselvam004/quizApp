// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = "You did it";
    if (totalScore < 10) {
      resultText = 'Your score < 10';
    } else if (totalScore < 20) {
      resultText = 'Your score < 20';
    } else {
      resultText = 'Your score < 30';
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
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            padding: const EdgeInsets.all(10),
            color: Colors.blue,
            onPressed: resetQuiz,
            child: const Text(
              'Reset Quiz',
              style: TextStyle(
                color: Color.fromARGB(255, 254, 254, 255),
              ),
            ),
          )
        ],
      ),
    );
  }
}
