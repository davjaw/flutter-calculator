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
        const SizedBox(width: 20),
        OutlinedButtonsTemplate(buttonText: "8", onPressed: () => {
          setState((){
            logic.buildNumbers("8");
          }),
        }),
        const SizedBox(width: 20),
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
                    List<String> parts = equation.split("\n");
                    String fullEquation = parts[0];
                    String date = parts[1];
                return ListTile(
                  title: Text(
                    fullEquation,
                    style: const TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  subtitle: Text(
                    date,
                    style: const TextStyle(fontSize: 12.0, color: Colors.white),
                  ),
                );
              },
            ).toList();

            return Scaffold(
              appBar: AppBar(
                title: const Text("Equation history"),
                backgroundColor: const Color.fromRGBO(0, 0, 0, 110),
                foregroundColor: Colors.white,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        logic.clearHistory();
                      });
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              body: ListView(children: tiles.reversed.toList()),
              backgroundColor: const Color.fromRGBO(25, 43, 161, 100),
            );
          },
        ),
      );
    });
  }
}