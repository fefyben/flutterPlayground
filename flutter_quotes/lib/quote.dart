import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  final String quoteText;
  final String author;

  const Quote(this.quoteText, this.author, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: 150),
      margin: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            quoteText,
            style: const TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontFamily: 'Georgia',
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            '- $author',
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
