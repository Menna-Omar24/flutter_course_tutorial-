// Create a simple calculator program that takes two numbers and an operator ('+', '-', '*', '/') as input. Use a switch statement to perform  operations and print the result.
import 'dart:io';

void main() {
  stdout.write('Enter First Number: ');
  double? num1 = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Enter operator ( + , - , * , / ): ');
  String? operator = stdin.readLineSync();

  stdout.write('Enter Second Number: ');
  double? num2 = double.tryParse(stdin.readLineSync() ?? '');

  if (num1 == null || num2 == null || operator == null) {
    print('Invalid input! Please enter valid numbers and an operator');
    return;
  }

  double result;
  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print('Error! Division by zero is not allowed ');
        return;
      }
      result = num1 / num2;
      break;
    default:
      print('Invalid operator! please enter one of ( + , - , * , / )');
      return;
  }
  print('Result: $num1 $operator $num2 = $result');
}
