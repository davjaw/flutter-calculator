import 'package:flutter/foundation.dart';

var inputValue = "";
var equation = "";
var secondNumber = "";
bool isFunctionalButtonPressed = false;
bool isEqualsPressed = false;

final ValueNotifier<String> inputValueNotifier = ValueNotifier<String>("");
final ValueNotifier<String> equationNotifier = ValueNotifier<String>("");

void buildNumbers (providedButton){
  equation += providedButton ;
  print(equation);
  equationNotifier.value = equation;
}

String displayNumber (clickedNumber){
  return clickedNumber;
}

void displ (String value) {
  inputValue += value;
  print("$inputValue inputValue and $value numValue");
  inputValueNotifier.value = inputValue;
}


