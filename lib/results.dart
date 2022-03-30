import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  const Results({Key? key,required this.totalScore, required this.resetHandler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text("You did it",textAlign: TextAlign.center,style: TextStyle(fontSize: 40,),),
          Text(totalScore.toString(),textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: Colors.blueAccent),),
          ElevatedButton(onPressed: resetHandler, child: Text("Reset"))
        ],
      ),
    );
  }
}
