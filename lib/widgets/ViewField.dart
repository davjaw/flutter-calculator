import 'package:flutter/material.dart';

class ViewField extends StatefulWidget {
  final int numbers;
  final String fieldText;
  final double fontSize;
  const ViewField({super.key, required this.numbers, required this.fieldText, required this.fontSize});

  @override
  State<ViewField> createState() => _ViewFieldState();
}

class _ViewFieldState extends State<ViewField> {

  @override
  Widget build(BuildContext build) {
    return TextFormField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.right,
        readOnly: true,
        style: TextStyle(fontSize: widget.fontSize),
        decoration: InputDecoration(
          // border: OutlineInputBorder(),
          border: InputBorder.none,
          hintText: widget.fieldText,
          contentPadding: const EdgeInsets.all(10.0),
        ),
    );
  }

}