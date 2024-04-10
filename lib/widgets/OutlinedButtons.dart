import 'package:flutter/material.dart';

class OutlinedButtonsTemplate extends StatelessWidget {
  final String buttonText;
  const OutlinedButtonsTemplate({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context){
    return OutlinedButton(
      onPressed: () => {},
      style: OutlinedButton.styleFrom(
        fixedSize: const Size(80, 80),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 30),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      child: Text(buttonText),
    );
  }
}

class SevenNineButtons extends StatelessWidget {
  const SevenNineButtons({super.key});

  @override
  Widget build(BuildContext context){
    return const Row(
      children: [
        OutlinedButtonsTemplate(buttonText: "7"),
        SizedBox(width: 20),
        OutlinedButtonsTemplate(buttonText: "8"),
        SizedBox(width: 20),
        OutlinedButtonsTemplate(buttonText: "9")
      ],
    );
  }
}