import 'package:flutter/material.dart';
import 'package:lab02/widgets/Keyboard.dart';
import 'package:lab02/widgets/OutlinedButtons.dart';
import 'package:lab02/widgets/ViewField.dart';
import 'package:lab02/model/CalculatorLogic.dart' as logic;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _inputViewField = 0;
  int _outputViewField = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 110),
        foregroundColor: Colors.white,
        title: const Text("Calculator"),
        actions: const [HistoryButton()],
        elevation: 10,
      ),
      body: Column(
        children: [
          ViewField(numbers: "0", fieldText: "input", fontSize: 30.0),
          ViewField(numbers: "0", fieldText: "output", fontSize: 50.0),
          const Keyboard(),
        ],
      ),
      backgroundColor: const Color.fromRGBO(25, 43, 161, 100),
    );
  }
}
