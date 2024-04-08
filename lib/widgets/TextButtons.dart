import 'package:flutter/material.dart';

class TextButtonsTemplate extends StatelessWidget {
  VoidCallback onPressed;
  final String text;
  TextButtonsTemplate({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context){
    return TextButton(
      onPressed: onPressed,
      // padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
      // minWidth: 90,
      // height: 90,
      style: TextButton.styleFrom(
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        textStyle: const TextStyle(fontSize: 30)
      ),
      child: Text(text),
      // color: Colors.grey,
      // textColor: Colors.black,
    );
  }
}

class OneThreeButtons extends StatelessWidget {
  const OneThreeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Row(
          children: [ TextButtonsTemplate(onPressed: () => {}, text: "1"), TextButtonsTemplate(onPressed: () => {}, text: "2"), TextButtonsTemplate(onPressed: () => {}, text: "3")],
        ),
      ],
    );
  }
}