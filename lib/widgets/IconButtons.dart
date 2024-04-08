import 'package:flutter/material.dart';

class IconButtonsTemplate extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: buttonImage != null ? ImageIcon(buttonImage!) : Icon(buttonIcon),
      color: buttonColor,
      tooltip: tooltipOnButton,
      // textColor: Colors.black,
    );
  }
}

class FunctionalButtons extends StatelessWidget {
  const FunctionalButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButtonsTemplate(onPressed: () {}, buttonColor: Colors.green, buttonIcon: Icons.add, tooltipOnButton: "Add",),
        IconButtonsTemplate(onPressed: () {}, buttonColor: Colors.red, buttonIcon: Icons.remove, tooltipOnButton: "Minus",),
        IconButtonsTemplate(onPressed: () {}, buttonColor: Colors.orange, buttonImage: AssetImage('lib/icons/xmark-solid.png'), tooltipOnButton: "Multiply"),
        IconButtonsTemplate(onPressed: () {}, buttonColor: Colors.blue, buttonImage: AssetImage('lib/icons/equals-solid.png'), tooltipOnButton: "Equals"),
      ],
    );
  }
}