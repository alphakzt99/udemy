import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final Function answerQuestion;
  final int index;
  const Quiz({Key? key, required this.answerQuestion,required this.index, required this.questions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(index: questions[index]['question']),
        // final is the runtime final value dun matter while development
        //const is the compile time const the final value is not locked but after compiled
        //map returns the lazy iterable of the mapping list
        // in order to use map, the former must be a list i.e. the thing that you want to iterate
        // maps it to the function that you want to use it and change it into list
        // ... means that it took all the values in the list and puts them in surrounding list as individual values.
        ...(questions[index]['answers'] as List<Map>).map((answer) {
          return Answer(handler: () => answerQuestion(answer['score']), answer: answer['text']);
        }).toList()
      ],
    );
  }
}
