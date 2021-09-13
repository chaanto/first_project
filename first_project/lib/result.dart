import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartHandler;

  Result(this.resultScore, this.restartHandler);

  String get resultWord {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You\'re Awesome';
    } else if (resultScore <= 12) {
      resultText = 'You are likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are weird?!';
    } else {
      resultText = 'You are not good!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultWord,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz!'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: restartHandler, 
          )
        ],
      ),
    );
  }
}
