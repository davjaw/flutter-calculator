import 'package:flutter/material.dart';
import 'package:lab02/model/CalculatorLogic.dart' as logic;
import 'package:lab02/widgets/EquationsHistory.dart' as hButton;

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
          borderRadius: widget.buttonText != "H" ? const BorderRadius.all(
            Radius.circular(10),
          ) : const BorderRadius.all(
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
            logic.buildNumbers("7");
          }),
        }),
        SizedBox(width: 20),
        OutlinedButtonsTemplate(buttonText: "8", onPressed: () => {
          setState((){
            logic.buildNumbers("8");
          }),
        }),
        SizedBox(width: 20),
        OutlinedButtonsTemplate(buttonText: "9", onPressed: () => {
          setState(() {
            logic.buildNumbers("9");
          }),
        })
      ],
    );
  }
}

class HistoryButton extends StatefulWidget {
  const HistoryButton({super.key});

  @override
  _HistoryButton createState() => _HistoryButton();
}

class _HistoryButton extends State<HistoryButton>{
  @override
  Widget build(BuildContext context){
    return OutlinedButtonsTemplate(buttonText: "H", onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (BuildContext build) {
            final tiles = logic.equationHistory.map(
                  (equation) {
                return ListTile(
                  title: Text(
                    equation,
                    style: TextStyle(fontSize: 16.0),
                  ),
                );
              },
            ).toList();

            return Scaffold(
              appBar: AppBar(
                title: Text("Equation History"),
                backgroundColor: Theme.of(context).primaryColor,
                actions: [
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        // logic.clearHistory(); // Clear the history
                      });
                      Navigator.pop(context); // Close the dialog
                    },
                  ),
                ],
              ),
              body: ListView(children: tiles),
            );
          },
        ),
      );
    });
  }
}