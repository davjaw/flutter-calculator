import 'package:flutter/material.dart';
import 'package:lab02/model/CalculatorLogic.dart' as logic;

class IconButtonsTemplate extends StatefulWidget {
  VoidCallback onPressed;
  final Color buttonColor;
  final String tooltipOnButton;
  final String? text;
  final IconData? buttonIcon;
  final ImageProvider? buttonImage;

  IconButtonsTemplate({super.key,
    required this.onPressed,
    required this.buttonColor,
    this.text,
    this.buttonIcon,
    this.buttonImage,
    required this.tooltipOnButton});

  @override
  _IconButtonsTemplate createState() => _IconButtonsTemplate();
}
class _IconButtonsTemplate extends State<IconButtonsTemplate>{
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: widget.onPressed,
      icon: widget.buttonImage != null ? ImageIcon(widget.buttonImage!) : Icon(widget.buttonIcon),
      color: widget.buttonColor,
      tooltip: widget.tooltipOnButton,
      style: IconButton.styleFrom(
        fixedSize: const Size(80, 80),
        backgroundColor: Colors.deepPurple,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}

class FunctionalButtons extends StatefulWidget {
  const FunctionalButtons({super.key});

  @override
  _FunctionalButtons createState() => _FunctionalButtons();
}
class _FunctionalButtons extends State<FunctionalButtons>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButtonsTemplate(
          onPressed: () => {
            setState(() {
              logic.buildNumbers("+");
            }),
          },
          buttonColor: Colors.green,
          buttonIcon: Icons.add,
          tooltipOnButton: "Add",
        ),
        const SizedBox(height: 20),
        IconButtonsTemplate(
          onPressed: () => {
            setState(() {
              logic.buildNumbers("-");
            }),
          },
          buttonColor: Colors.red,
          buttonIcon: Icons.remove,
          tooltipOnButton: "Minus",
        ),
        const SizedBox(height: 20),
        IconButtonsTemplate(
            onPressed: () => {
              setState(() {
                logic.buildNumbers("*");
              }),
            },
            buttonColor: Colors.orange,
            buttonImage: const AssetImage('lib/icons/xmark-solid.png'),
            tooltipOnButton: "Multiply"),
        const SizedBox(height: 20),
        IconButtonsTemplate(
            onPressed: () => {
              setState(() {
                logic.buildNumbers("=");
              }),
            },
            buttonColor: Colors.blue,
            buttonImage: const AssetImage('lib/icons/equals-solid.png'),
            tooltipOnButton: "Equals"),
      ],
    );
  }
}
