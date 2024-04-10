import 'package:flutter/material.dart';
import 'package:lab02/model/CalculatorLogic.dart' as logic;

class TextButtonsTemplate extends StatelessWidget {
  // final Callback callback;
  VoidCallback callback;
  final String text;
  TextButtonsTemplate({super.key, required this.text, required this.callback});

  @override
  Widget build(BuildContext context){
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        fixedSize: const Size(80, 80),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 30),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10)
            ),
          ),
        ),
      child: Text(text),
    );
  }
}

class OneThreeButtons extends StatelessWidget {
  const OneThreeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButtonsTemplate(callback: () => {}, text: "1", ),
        const SizedBox(width: 20),
        TextButtonsTemplate(callback: () => {}, text: "2"),
        const SizedBox(width: 20),
        TextButtonsTemplate(callback: () => {}, text: "3")
      ],
    );
  }
}