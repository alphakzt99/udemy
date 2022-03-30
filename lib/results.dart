import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int totalScore;
  const Results({Key? key,required this.totalScore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text("You did it",style: TextStyle(fontSize: 40),),
          Text(totalScore.toString(),style: TextStyle(fontSize: 30,color: Colors.blueAccent),)
        ],
      ),
    );
  }
}
