import 'package:flutter/foundation.dart';

var inputValue = "";
var firstNumber = "";
var secondNumber = "";
bool isFunctionalButtonPressed = false;
bool isEqualsPressed = false;

final ValueNotifier<String> inputValueNotifier = ValueNotifier<String>("");

String buildNumbers (providedNumber){
  if (isFunctionalButtonPressed) {
    firstNumber += providedNumber;
    print("$providedNumber clicked");
    return firstNumber;
  } else {
    secondNumber += providedNumber;
    print("$providedNumber clicked\n $secondNumber firstNumber");
    return secondNumber;
  }
}

String displayNumber (clickedNumber){
  return clickedNumber;
}

void displ (String value) {
  inputValue += value;
  print("$inputValue inputValue and $value numValue");
  inputValueNotifier.value = inputValue;
}


