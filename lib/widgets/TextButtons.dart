import 'package:flutter/material.dart';

class TextButtonsTemplate extends StatelessWidget {
  VoidCallback onPressed;
  final String text;
  TextButtonsTemplate({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context){
    return TextButton(
      onPressed: onPressed,
      // minWidth: 90,
      // height: 90,
      style: TextButton.styleFrom(
        fixedSize: const Size(80, 80),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 30),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
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
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButtonsTemplate(onPressed: () => {}, text: "1"),
        const SizedBox(width: 20),
        TextButtonsTemplate(onPressed: () => {}, text: "2"),
        const SizedBox(width: 20),
        TextButtonsTemplate(onPressed: () => {}, text: "3")
      ],
    );
  }
}