import 'dart:io';

void main() {
  int numerator, denominator;
  double result;

  while (true) {
    try {
      stdout.write('Enter the numerator: ');
      numerator = int.parse(stdin.readLineSync()!);

      stdout.write('Enter the denominator: ');
      denominator = int.parse(stdin.readLineSync()!);

      if (denominator == 0) {
        print('Error: Division by zero is not allowed. try again');
        continue;
      }
      result = numerator / denominator;
      print('result:$result');
      break;
    } catch (e) {
      print('Error: Invalid input. please enter integers only');
    }
  }
}
