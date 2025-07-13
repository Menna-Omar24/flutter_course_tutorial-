import 'dart:io';

double add(double num1, double num2) => num1 + num2;

double subtract(double num1, double num2) => num1 - num2;

double multiply(double num1, double num2) => num1 * num2;

double? divide(double num1, double num2) {
  if (num2 == 0) {
    print('Error: can\'t divide by zero');
    return null;
  }
  return num1 / num2;
}

void main() {
  print('Welcome To Dart Calculator');

  print('Enter First Number: ');
  double? n1 = double.tryParse(stdin.readLineSync()!);

  print("Enter operator (+, -, *, /):");
  String? operator = stdin.readLineSync();

  print('Enter Second Number: ');
  double? n2 = double.tryParse(stdin.readLineSync()!);

  if (n1 == null || n2 == null || operator == null) {
    print('Invalid input.');
    return;
  }
  double result;

  if (operator == '+') {
    result = add(n1, n2);
  } else if (operator == '-') {
    result = subtract(n1, n2);
  } else if (operator == '*') {
    result = multiply(n1, n2);
  } else if (operator == '/') {
    double? divisionResult = divide(n1, n2);
    if (divisionResult == null) return;
    result = divisionResult;
  } else {
    print('invalid operator');
    return;
  }
  print('Result: ${result.toStringAsFixed(2)}');
}
