import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lab02/model/CalculatorLogic.dart' as logic;
/*
class EquationsList extends StatefulWidget {
  EquationsList({super.key});

  @override
  _EquationsList createState() => _EquationsList();
}

class _EquationsList extends State<EquationsList> {
  void _showEquationHistory() {
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
  }

  @override
  Widget build(BuildContext build){
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved equations"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          // logic.equationHistory,
        ],)
    );

  }
}
/*
return Scaffold(
appBar: AppBar(
title:Text("Startup Name Generator"),
backgroundColor: Theme.of(context).primaryColor,
actions: [
IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
],
),
body: _buildSuggestions(),
);
}
*/
*/