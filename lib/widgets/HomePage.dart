import 'package:flutter/material.dart';
import 'package:lab02/widgets/MyButton.dart';
import 'package:lab02/widgets/FunctionalButtons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [ButtonsAlignment(), FunctionalButtonsAlignment()],
    );
  }
}