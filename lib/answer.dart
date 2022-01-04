import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String textAnswer;
  const Answer(
      {Key? key, required this.selectHandler, required this.textAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.lightBlue,
          textColor: Colors.white,
          child: Text(textAnswer),
          onPressed: selectHandler),
    );
  }
}
