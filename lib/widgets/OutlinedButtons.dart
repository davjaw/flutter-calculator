import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutlinedButtonsTemplate extends StatelessWidget {
  final String buttonText;
  const OutlinedButtonsTemplate({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context){
    return OutlinedButton(
      onPressed: () => {},
      style: OutlinedButton.styleFrom(
        fixedSize: buttonText != "H" ? Size(80, 80): const Size(10,10),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 30),
        shape: RoundedRectangleBorder(
          borderRadius: buttonText != "H" ? BorderRadius.zero : const BorderRadius.all(
            Radius.circular(100)
          ),
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

class HistoryButton extends StatelessWidget{
  const HistoryButton({super.key});
  
  @override
  Widget build(BuildContext context){
    return const OutlinedButtonsTemplate(buttonText: "H");
  }
}