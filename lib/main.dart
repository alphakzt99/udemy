import 'package:flutter/material.dart';
import 'results.dart';
import 'quiz.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var _totalScore = 0;
  var _questionindex = 0;

  void _reset(){
    setState(() {
      _totalScore = 0;
      _questionindex = 0;
    });
  }
  void _answerQuestions(int score) {

    _totalScore += score;
    setState(() {
      _questionindex = _questionindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'question': 'What\'s your name?',
        'answers': [
          {'text': 'Brad', 'score': 1},
          {'text': 'Mary', 'score': 3},
          {'text': 'John', 'score': 4},
          {'text': 'Jack', 'score': 2}
        ],
      },
      {
        'question': 'What\'s your animal?',
        'answers': [
          {'text': 'Lion', 'score': 9},
          {'text': 'Ant', 'score': 3},
          {'text': 'Hen', 'score': 5},
          {'text': 'Quil', 'score': 2}
        ],
      },
      {
        'question': 'What\'s your color?',
        'answers': [
          {'text': 'Red', 'score': 1},
          {'text': 'Blue', 'score': 3},
          {'text': 'Green', 'score': 4},
          {'text': 'Black', 'score': 2}
        ],
      }
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text("My first app"),
            ),
            body: _questionindex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestions,
                    index: _questionindex,
                    questions: _questions,
                  )
                : Results(totalScore: _totalScore,resetHandler: _reset,)
                  )
                  );
  }
}
