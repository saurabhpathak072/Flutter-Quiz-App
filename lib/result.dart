import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  const Result({Key? key, required this.resultScore, required this.resetQuiz})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore > 25) {
      resultText = 'Awsome ' + resultScore.toString();
    } else if (resultScore <= 20) {
      resultText = 'Good ' + resultScore.toString();
    } else {
      resultText = 'Average ' + resultScore.toString();
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
            style: const TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
          FlatButton(
              onPressed: resetQuiz,
              child: const Text('Restart the Quiz!!'),
              textColor: Colors.amber)
        ],
      ),
    );
  }
}
