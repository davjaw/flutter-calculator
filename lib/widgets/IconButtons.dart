import 'package:flutter/material.dart';

class IconButtonsTemplate extends StatelessWidget {
  VoidCallback onPressed;
  final Color buttonColor;
  final String tooltipOnButton;
  final String? text;
  final IconData? buttonIcon;
  final ImageProvider? buttonImage;
  IconButtonsTemplate(
      {super.key,
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
      style: IconButton.styleFrom(
        fixedSize: const Size(80, 80),
        backgroundColor: Colors.deepPurple,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
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
        IconButtonsTemplate(
          onPressed: () {},
          buttonColor: Colors.green,
          buttonIcon: Icons.add,
          tooltipOnButton: "Add",
        ),
        SizedBox(height: 20),
        IconButtonsTemplate(
          onPressed: () {},
          buttonColor: Colors.red,
          buttonIcon: Icons.remove,
          tooltipOnButton: "Minus",
        ),
        SizedBox(height: 20),
        IconButtonsTemplate(
            onPressed: () {},
            buttonColor: Colors.orange,
            buttonImage: AssetImage('lib/icons/xmark-solid.png'),
            tooltipOnButton: "Multiply"),
        SizedBox(height: 20),
        IconButtonsTemplate(
            onPressed: () {},
            buttonColor: Colors.blue,
            buttonImage: AssetImage('lib/icons/equals-solid.png'),
            tooltipOnButton: "Equals"),
      ],
    );
  }
}
