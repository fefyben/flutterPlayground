import 'package:flutter/material.dart';

class Generator extends StatelessWidget {
  final VoidCallback generateHandler;

  const Generator(this.generateHandler, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 100),
      child: ElevatedButton(
        child: const Text(
          'Next Quote',
          style: TextStyle(fontSize: 20),
        ),
        onPressed: generateHandler,
        style: ElevatedButton.styleFrom(primary: Colors.pink.shade900),
      ),
    );
  }
}
