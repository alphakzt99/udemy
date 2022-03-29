import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final index;
  const Question({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(index),
    );
  }
}
