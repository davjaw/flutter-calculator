import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

var equation = "";
var result = "";
List<String> equationHistory = [];

bool isFunctionalButtonPressed = false;
bool isEqualsPressed = false;

final ValueNotifier<String> inputValueNotifier = ValueNotifier<String>("");
final ValueNotifier<String> equationNotifier = ValueNotifier<String>("");
final ValueNotifier<String> resultNotifier = ValueNotifier<String>("");

String calculateEquation(String inputEquation) {
  List<String> tokens = inputEquation.split(RegExp(r'(\+|\-|\*|\/)'));

  List<String> operators = [];
  for (var i = 0; i < inputEquation.length; i++) {
    if (inputEquation[i] == '+' ||
        inputEquation[i] == '-' ||
        inputEquation[i] == '*' ||
        inputEquation[i] == '/') {
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
  String currentDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  equationHistory.add("$inputEquation = ${result.toString()}\n$currentDate");
  return result.toString();
}

void buildNumbers(providedButton) {
  if (providedButton == "=") {
    result = calculateEquation(equation);
    resultNotifier.value = result.split('\n')[0];
    equation = "";
  } else if (providedButton == "+" ||
      providedButton == "-" ||
      providedButton == "*" ||
      providedButton == "/") {
    if (equation.isNotEmpty &&
        !"+-*/".contains(equation.substring(equation.length - 1))) {
      equation += providedButton;
    }
  } else {
    equation += providedButton;
    equationNotifier.value = equation;
  }
}

void clearHistory () {
  equationHistory = [];
}