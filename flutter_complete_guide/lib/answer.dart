import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
      child: ElevatedButton(
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all(Colors.amber),
        //   foregroundColor: MaterialStateProperty.all(Colors.black),
        // ),
        // Alternative Style for ElevatedButton
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.white,
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
