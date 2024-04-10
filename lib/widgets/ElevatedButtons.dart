import 'package:flutter/material.dart';

class ElevatedButtonsTemplate extends StatelessWidget {
  final String buttonText;
  const ElevatedButtonsTemplate({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: buttonText != '0' ? const Size(80, 80) : const Size(280, 80),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 30),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      onPressed: () => {},
      child: Text(buttonText),
    );
  }
}

class FourSixSevenButtons extends StatelessWidget {
  const FourSixSevenButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ElevatedButtonsTemplate(buttonText: "4"),
        SizedBox(width: 20),
        ElevatedButtonsTemplate(buttonText: "5"),
        SizedBox(width: 20),
        ElevatedButtonsTemplate(buttonText: "6")
      ],
    );
  }
}

class ZeroButton extends StatelessWidget {
  const ZeroButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ElevatedButtonsTemplate(buttonText: "0")
      ]
    );
  }
}
