import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var _questionindex = 0;
  void _answerQuestions() {
    setState(() {
      _questionindex = _questionindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'What\'s your name?',
        'answers': ['Roger', 'Amy', 'James', 'Luna']
      },
      {
        'question': 'What\'s your color?',
        'answers': ['Red', 'Ample', 'Green', 'Light Yellow']
      },
      {
        'question': 'What\'s your animal?',
        'answers': ['Rabbit', 'Ant', 'Jaguar', 'Law']
      },
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text("My first app"),
            ),
            body: _questionindex < questions.length
                ? Column(
                    children: <Widget>[
                      Question(index: questions[_questionindex]['question']),
                      // final is the runtime final value dun matter while development
                      //const is the compile time const the final value is not locked but after compiled
                      //map returns the lazy iterable of the mapping list
                      // in order to use map, the former must be a list i.e. the thing that you want to iterate
                      // maps it to the function that you want to use it and change it into list
                      // ... means that it took all the values in the list and puts them in surrounding list as individual values.
                      ...(questions[_questionindex]['answers'] as List<String>)
                          .map((answer) {
                        return Answer(
                            handler: _answerQuestions, answer: answer);
                      }).toList()
                    ],
                  )
                : Container(
                    child: Text("You did it"),
                  )));
  }
}
