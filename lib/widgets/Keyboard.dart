import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lab02/widgets/TextButtons.dart';
import 'package:lab02/widgets/ElevatedButtons.dart';
import 'package:lab02/widgets/OutlinedButtons.dart';
import 'package:lab02/widgets/IconButtons.dart';


class NumButtons extends StatelessWidget{
  const NumButtons({super.key});

  @override
  Widget build(BuildContext context){
    return const Column (
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OneThreeButtons(),
        SizedBox(height: 20),
        FourSixSevenButtons(),
        SizedBox(height: 20),
        SevenNineButtons(),
        SizedBox(height: 20),
        ZeroButton()
      ],
    );
  }
}



class NumericalButtons extends StatelessWidget{
  const NumericalButtons({super.key});

  @override
  Widget build(BuildContext context){
    return const NumButtons();
  }
}

class Keyboard extends StatelessWidget{
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context){
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            NumericalButtons(),
          ],
        ),
        Row (
          children: [
            FunctionalButtons()
          ],
        ),
      ],
    );
  }
}