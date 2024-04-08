import 'package:flutter/material.dart';
import 'package:lab02/widgets/TextButtons.dart';
import 'package:lab02/widgets/IconButtons.dart';
import 'package:lab02/widgets/ViewField.dart';
import 'package:lab02/widgets/ElevatedButtons.dart';
import 'package:lab02/widgets/OutlinedButtons.dart';

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
        title: Text("Calculator"),
        elevation: 10,
      ),
          body: Container(
            // margin: EdgeInsets.all(50),
              child: Row(
                children: [FunctionalButtons()],
              ),
          ),
          /*
        child: const Align(
          alignment: Alignment.topRight,
          children: [FunctionalButtonsAlignment(),ButtonsAlignment()]
        ),
    */
    );
  }
}
