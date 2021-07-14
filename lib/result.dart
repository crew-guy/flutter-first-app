import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  var resultString;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler) {
    if (this.resultScore >= 14) {
      resultString = 'You are awesome';
      // print("person is awesome");
    } else if (this.resultScore >= 11) {
      resultString = 'You are theek thaak';
    } else {
      resultString = 'You are not awesome';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            this.resultString,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              textColor: Colors.white,
              child: Text('Reset Quiz'),
              color: Colors.blue,
              onPressed: this.resetHandler),
        ],
      ),
    );
  }
}
