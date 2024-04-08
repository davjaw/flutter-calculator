import 'package:flutter/material.dart';

class OutlinedButtonsTemplate extends StatelessWidget {
  final String buttonText;
  const OutlinedButtonsTemplate({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context){
    return OutlinedButton(
        onPressed: () => {},
        child: Text(buttonText),
    );
  }
}

class SevenNineButtons extends StatelessWidget {
  const SevenNineButtons({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [OutlinedButtonsTemplate(buttonText: "7"), OutlinedButtonsTemplate(buttonText: "8"), OutlinedButtonsTemplate(buttonText: "9")],
    );
  }
}