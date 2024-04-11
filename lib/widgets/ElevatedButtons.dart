import 'package:flutter/material.dart';
import 'package:lab02/model/CalculatorLogic.dart' as logic;

class ElevatedButtonsTemplate extends StatefulWidget {
  final String buttonText;
  VoidCallback onPressed;

  ElevatedButtonsTemplate({super.key, required this.buttonText, required this.onPressed});

  @override
  _ElevatedButtonsTemplate createState() => _ElevatedButtonsTemplate();
}
class _ElevatedButtonsTemplate extends State<ElevatedButtonsTemplate>
{
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: widget.buttonText != '0' ? const Size(80, 80) : const Size(280, 80),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 30),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      onPressed: widget.onPressed,
      child: Text(widget.buttonText),
    );
  }
}

class FourSixSevenButtons extends StatefulWidget {
  const FourSixSevenButtons({super.key});

  @override
  _FourSixSevenButtons createState() => _FourSixSevenButtons();
}
class _FourSixSevenButtons extends State<FourSixSevenButtons>{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButtonsTemplate(buttonText: "4", onPressed: () =>{
          setState(() {
            logic.buildNumbers("4");
          }),
        }),
        const SizedBox(width: 20),
        ElevatedButtonsTemplate(buttonText: "5", onPressed: () => {
          setState(() {
            logic.buildNumbers("5");
          }),
        }),
        const SizedBox(width: 20),
        ElevatedButtonsTemplate(buttonText: "6", onPressed: () => {
          setState(() {
            logic.buildNumbers("6");
          }),
        }),
      ],
    );
  }
}

class ZeroButton extends StatefulWidget {
  const ZeroButton({super.key});

  @override
  _ZeroButton createState() => _ZeroButton();
}
class _ZeroButton extends State<ZeroButton>{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButtonsTemplate(buttonText: "0", onPressed: () => {
          setState(() {
            logic.buildNumbers("0");
          }),
        })
      ]
    );
  }
}
