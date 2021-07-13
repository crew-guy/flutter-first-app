import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  static const questions = const [
    {
      'questionText': "Which is your favourite color ?",
      'answers': [
        {'text': 'Colr 1', 'score': 3},
        {'text': 'Colr 2', 'score': 5},
        {'text': 'Colr 3', 'score': 6},
        {'text': 'Colr 4', 'score': 8},
      ]
    },
    {
      'questionText': "Which is your book ?",
      'answers': [
        {'text': 'Book 1', 'score': 3},
        {'text': 'Book 2', 'score': 5},
        {'text': 'Book 3', 'score': 6},
        {'text': 'Book 4', 'score': 8},
      ]
    },
    {
      'questionText': "Which is your favourite sweet ?",
      'answers': [
        {'text': 'Sweet 1', 'score': 3},
        {'text': 'Sweet 2', 'score': 5},
        {'text': 'Sweet 3', 'score': 6},
        {'text': 'Sweet 4', 'score': 8},
      ]
    },
    {
      'questionText': "Which is your favourite shoe ?",
      'answers': [
        {'text': 'Shoe 1', 'score': 3},
        {'text': 'Shoe 2', 'score': 5},
        {'text': 'Shoe 3', 'score': 6},
        {'text': 'Shoe 4', 'score': 8},
      ]
    }
  ];
  void _answerQuestion(score) {
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
        _totalScore += score;
      });
    } else {
      print('No more questions left');
      _questionIndex = _questionIndex - questions.length + 1;
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My app')),
        body: _questionIndex < questions.length
            ? Quiz(questions, _questionIndex, _answerQuestion)
            : Result(this._totalScore, _resetQuiz),
      ),
    );
  }
}
