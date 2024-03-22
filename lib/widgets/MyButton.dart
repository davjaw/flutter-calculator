import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  VoidCallback onPressed;
  final String text;
  MyButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context){
    return MaterialButton(
      onPressed: onPressed,
      child: Text(text),
      color: Colors.grey,
      textColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
    );
  }
}

class ButtonsAlignment extends StatelessWidget {
  const ButtonsAlignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [ MyButton(onPressed: () => {}, text: "1"), MyButton(onPressed: () => {}, text: "2"), MyButton(onPressed: () => {}, text: "3")],
        ),
        Row(
          children: [
            MyButton(onPressed: () => {}, text: "4"), MyButton(onPressed: () => {}, text: "5"), MyButton(onPressed: () => {}, text: "6")
        ]),
        Row (
          children: [
            MyButton(onPressed: () => {}, text: "7"), MyButton(onPressed: () => {}, text: "8"), MyButton(onPressed: () => {}, text: "9")
          ],
        ),
        MyButton(onPressed: () => {}, text: "0")
      ],
    );
  }
}