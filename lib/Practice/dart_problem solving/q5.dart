// Create a simple calculator program that takes two numbers and an operator ('+', '-', '*', '/') as input. Use a switch statement to perform  operations and print the result.
import 'dart:io';

void main() {
  stdout.write('Enter first number: ');
  num? n1 = num.tryParse(stdin.readLineSync() ?? '');
  stdout.write('Enter operator( + , - , * , / ): ');
  String operator = stdin.readLineSync() ?? '';
  stdout.write('Enter second number: ');
  num? n2 = num.tryParse(stdin.readLineSync() ?? '');
  if (n1 == null || n2 == null) {
    print('Invalid input! please enter valid number ');
    return;
  }
  num result;
  switch (operator) {
    case '+':
      result = n1 + n2;
      break;
    case '-':
      result = n1 - n2;
      break;
    case '*':
      result = n1 * n2;
      break;
    case '/':
      if (n2 == 0) {
        print('Error: division by zero is not allowed');
        return;
      }
      result = n1 / n2;
      break;
    default:
      print('Invalid operator! please enter one of( + , - , * , / )');
      return;
  }
  print('Result : $n1 $operator $n2 = $result');
}
