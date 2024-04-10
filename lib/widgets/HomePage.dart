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
  String inputValue = "0";
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
          // input
          ValueListenableBuilder<String>(
            valueListenable: logic.equationNotifier,
            builder: (context, value, child) {
              return ViewField(numbers: 0, fieldText: value, fontSize: 30.0);
            },
          ),
          //output
          ValueListenableBuilder(
              valueListenable: logic.resultNotifier,
              builder: (context, value, child){
                return ViewField(numbers: 0, fieldText: value, fontSize: 50.0);
              }),
          // ViewField(numbers: 0, fieldText: logic.inputValue, fontSize: 30.0)
          // ViewField(numbers: 0, fieldText: logic.inputValue, fontSize: 50.0),
          const Keyboard(),
        ],
      ),
      backgroundColor: const Color.fromRGBO(25, 43, 161, 100),
    );
  }
}
