import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String answer;
  const Answer({Key? key, required this.handler, required this.answer})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      child: Text(answer),
      onPressed: () => handler(),
    ));
  }
}
