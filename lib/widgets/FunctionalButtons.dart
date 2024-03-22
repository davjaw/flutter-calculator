import 'package:flutter/material.dart';

class FunctionalButtons extends StatelessWidget {
  VoidCallback onPressed;
  final Color buttonColor;
  final String text;
  FunctionalButtons({super.key, required this.onPressed, required this.buttonColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(text),
      color: buttonColor,
      textColor: Colors.black,
    );
  }
}

class FunctionalButtonsAlignment extends StatelessWidget {
  const FunctionalButtonsAlignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FunctionalButtons(onPressed: () {}, buttonColor: Colors.green, text: "+"), FunctionalButtons(onPressed: () {}, buttonColor: Colors.red, text: "-"), FunctionalButtons(onPressed: () {}, buttonColor: Colors.orange, text: "*"), FunctionalButtons(onPressed: () {}, buttonColor: Colors.blue, text: "=")
      ],
    );
  }
}