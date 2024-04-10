import 'package:flutter/material.dart';
import 'package:lab02/model/CalculatorLogic.dart' as logic;

class OutlinedButtonsTemplate extends StatefulWidget {
  final String buttonText;
  VoidCallback onPressed;

  OutlinedButtonsTemplate({super.key, required this.buttonText, required this.onPressed});

  @override
  _OutlinedButtonsTemplate createState() => _OutlinedButtonsTemplate();
}
class _OutlinedButtonsTemplate extends State<OutlinedButtonsTemplate>
{
  @override
  Widget build(BuildContext context){
    return OutlinedButton(
      onPressed: widget.onPressed,
      style: OutlinedButton.styleFrom(
        fixedSize: widget.buttonText != "H" ? const Size(80, 80): const Size(10,10),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 30),
        shape: RoundedRectangleBorder(
          borderRadius: widget.buttonText != "H" ? BorderRadius.zero : const BorderRadius.all(
            Radius.circular(100)
          ),
        ),
      ),
      child: Text(widget.buttonText),
    );
  }
}

class SevenNineButtons extends StatefulWidget {
  const SevenNineButtons({super.key});

  @override
  _SevenNineButtons createState() => _SevenNineButtons();

}
class _SevenNineButtons extends State<SevenNineButtons>{
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        OutlinedButtonsTemplate(buttonText: "7", onPressed: () => {
          setState(() {
            logic.displ("7");
          }),
        }),
        SizedBox(width: 20),
        OutlinedButtonsTemplate(buttonText: "8", onPressed: () => {
          setState((){
            logic.displ("8");
          }),
        }),
        SizedBox(width: 20),
        OutlinedButtonsTemplate(buttonText: "9", onPressed: () => {
          setState(() {
            logic.displ("9");
          }),
        })
      ],
    );
  }
}

class HistoryButton extends StatelessWidget{
  const HistoryButton({super.key});
  
  @override
  Widget build(BuildContext context){
    return OutlinedButtonsTemplate(buttonText: "H", onPressed: () => {
      //switch view to history
    });
  }
}