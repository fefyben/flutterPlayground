import 'package:flutter/material.dart';

import './quote.dart';
import './generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Inspiring Quotes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String quote = 'initial quote';
  final _quotes = const [
    {
      'quoteText': 'Without music, life would be a mistake.',
      'author': 'Friedrich Nietzsche, Twilight of the Idols',
    },
    {
      'quoteText': 'In order to understand, I destroyed myself.',
      'author': 'Fernando Pessoa',
    },
    {
      'quoteText':
          'Mostly it is loss which teaches us about the worth of things.',
      'author': 'Arthur Schopenhauer',
    },
    {
      'quoteText':
          'If you\'re lonely when you\'re alone, you\'re in bad company.',
      'author': 'Jean-Paul Sartre',
    },
    {
      'quoteText': 'My past is everything I failed to be.',
      'author': 'Fernando Pessoa, The Book of Disquiet',
    },
  ];

  var _quoteIndex = 0;

  void _generator() {
    setState(() {
      _quoteIndex < (_quotes.length - 1) ? _quoteIndex++ : _quoteIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.blueGrey.shade900,
                  Colors.blueGrey,
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Quote of the Day:',
              style: TextStyle(fontSize: 20),
            ),
            Quote(_quotes[_quoteIndex]['quoteText']!,
                _quotes[_quoteIndex]['author']!),
            Generator(_generator),
          ],
        ),
      ),
    );
  }
}
