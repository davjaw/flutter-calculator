import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lab02/widgets/Keyboard.dart';
import 'package:lab02/widgets/OutlinedButtons.dart';
import 'package:lab02/widgets/ViewField.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        actions: [HistoryButton()],
        elevation: 10,
      ),
      body: const Column(
        children: [
          ViewField(numbers: 0, fieldText: "Input", fontSize: 30.0),
          ViewField(numbers: 0, fieldText: "Output", fontSize: 50.0),
          Keyboard(),
        ],
      ),
      backgroundColor: const Color.fromRGBO(25, 43, 161, 100),
    );
  }
}
