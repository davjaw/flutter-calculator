import 'package:flutter/material.dart';
import 'package:lab02/widgets/MyButton.dart';
import 'package:lab02/widgets/FunctionalButtons.dart';
import 'package:lab02/widgets/ViewField.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ViewField(numbers: 15)
    );
  }
}