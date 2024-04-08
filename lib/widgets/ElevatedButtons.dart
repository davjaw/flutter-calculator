import 'package:flutter/material.dart';

class ElevatedButtonsTemplate extends StatelessWidget {
  final String buttonText;
  const ElevatedButtonsTemplate({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
        onPressed: () => {},
        child: Text(buttonText),
    );
  }
}

class FourSixSevenButtons extends StatelessWidget {
  const FourSixSevenButtons({super.key});

  @override
  Widget build(BuildContext context){
    return Row(
      children: [ElevatedButtonsTemplate(buttonText: "4"), ElevatedButtonsTemplate(buttonText: "5"), ElevatedButtonsTemplate(buttonText: "6")],
    );
  }
}

class ZeroButton extends StatelessWidget {
  ZeroButton({super.key});
  
  @override
  Widget build(BuildContext context){
    return Row(
      children: [ElevatedButtonsTemplate(buttonText: "0")]
    );
  }
}