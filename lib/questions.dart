import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  // ignore: use_key_in_widget_constructors
  //const Questions(this.questionText);
  const Questions({Key? key, required this.questionText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
