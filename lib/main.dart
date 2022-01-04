import 'package:flutter/material.dart';

import 'package:fluttercompleteguide/quiz.dart';
import 'package:fluttercompleteguide/result.dart';

// void main() {
//   runApp(MyApp());
// }

//shorthand for function which has only one epression

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s Your Name',
      'answers': [
        {'text': 'Admin', 'score': 10},
        {'text': 'employee', 'score': 8},
        {'text': 'worker', 'score': 5},
      ]
    },
    {
      'questionText': 'What\'s your Favourite animal',
      'answers': [
        {'text': 'Dog', 'score': 20},
        {'text': 'Cat', 'score': 30},
        {'text': 'Tiger', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s You avouite Book',
      'answers': [
        {'text': 'HP', 'score': 10},
        {'text': 'BG', 'score': 10},
        {'text': 'HC', 'score': 10}
      ]
    },
  ];

  var _questionIndex = 0;
  var _isCompleted = false;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _isCompleted = false;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      if (_questionIndex < _questions.length - 1) {
        _questionIndex = _questionIndex + 1;
        _isCompleted = false;
      } else {
        _isCompleted = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar Title'),
        ),
        body: !_isCompleted
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(
                resultScore: _totalScore,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
