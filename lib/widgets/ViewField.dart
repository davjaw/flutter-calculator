import 'package:flutter/material.dart';

class ViewField extends StatefulWidget {
  final int numbers;
  ViewField({super.key, required this.numbers});

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
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          // border: OutlineInputBorder(),
          border: InputBorder.none,
          hintText: '0000000000000',
          contentPadding: EdgeInsets.all(10.0),
        ),
    );
  }

}