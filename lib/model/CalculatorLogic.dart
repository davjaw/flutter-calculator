import 'package:flutter/foundation.dart';
import 'dart:math';

var inputValue = "";
var equation = "";
var result = "";
var secondNumber = "";
bool isFunctionalButtonPressed = false;
bool isEqualsPressed = false;

final ValueNotifier<String> inputValueNotifier = ValueNotifier<String>("");
final ValueNotifier<String> equationNotifier = ValueNotifier<String>("");
final ValueNotifier<String> resultNotifier = ValueNotifier<String>("");

String calculateEquation(String inputEquation) {
  List<String> tokens = inputEquation.split(RegExp(r'(\+|\-|\*|\/)')); // Split the inputEquation into tokens

  List<String> operators = [];
  for (var i = 0; i < inputEquation.length; i++) {
    if (inputEquation[i] == '+' || inputEquation[i] == '-' || inputEquation[i] == '*' || inputEquation[i] == '/') {
      operators.add(inputEquation[i]);
    }
  }

  double result = double.parse(tokens[0]);

  for (var i = 1; i < tokens.length; i++) {
    if (operators[i - 1] == '+') {
      result += double.parse(tokens[i]);
    } else if (operators[i - 1] == '-') {
      result -= double.parse(tokens[i]);
    } else if (operators[i - 1] == '*') {
      result *= double.parse(tokens[i]);
    } else if (operators[i - 1] == '/') {
      result /= double.parse(tokens[i]);
    }
  }

  return result.toString();
}

void buildNumbers (providedButton){

  if (providedButton == "=") {
    result = calculateEquation(equation);
    print(result);
    resultNotifier.value = result;
    equation = "";
  } else {
    equation += providedButton ;
    print("$equation ELSE");
    equationNotifier.value = equation;
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


