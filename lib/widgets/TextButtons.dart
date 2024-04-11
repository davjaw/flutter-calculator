import 'package:flutter/material.dart';
import 'package:lab02/model/CalculatorLogic.dart' as logic;

class TextButtonsTemplate extends StatefulWidget {
  VoidCallback onPressed;
  final String text;

  TextButtonsTemplate({super.key, required this.onPressed, required this.text});

  @override
  _TextButtonsTemplate createState() => _TextButtonsTemplate();
}

class _TextButtonsTemplate extends State<TextButtonsTemplate> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        widget.onPressed();
      },
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
        child: Text(widget.text),
    );
  }
}

class OneThreeButtons extends StatefulWidget {
  const OneThreeButtons({super.key});

  @override
  _OneThreeButtons createState() => _OneThreeButtons();
}

class _OneThreeButtons extends State<OneThreeButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButtonsTemplate(
          onPressed: () => {
            setState(() {
              logic.buildNumbers("1");
            }),
          },
          text: "1",
        ),
        const SizedBox(width: 20),
        TextButtonsTemplate(
            onPressed: () => {
                  setState(() {
                    logic.buildNumbers("2");
                  }),
                },
            text: "2"),
        const SizedBox(width: 20),
        TextButtonsTemplate(
            onPressed: () => {
                  setState(() {
                    logic.buildNumbers("3");
                  }),
                },
            text: "3")
      ],
    );
  }
}
