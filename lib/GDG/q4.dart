/*
Task 4
 Create a simple calculator program that takes two numbers and an operator
 ('+', '-', '*', '/')as input.
 Use a switch statement to perform operations and print the result.
*/

import 'dart:io';

void main() {
  print('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('1) Add');
  print('2) Subtract');
  print('3) Multiply');
  print('4) Division');
  print('Enter number of operation: ');
  int operation = int.parse(stdin.readLineSync()!);

  switch (operation) {
    case 1:
      print("Result: ${num1 + num2}");
      break;
    case 2:
      print("Result: ${num1 - num2}");
      break;
    case 3:
      print("Result: ${num1 * num2}");
      break;
    case 4:
      if (num2 != 0) {
        print("Result: ${num1 / num2}");
      } else {
        print("Error:Can't Division by zero.");
      }
      break;
    default:
      print("Invalid operation");
  }
}
