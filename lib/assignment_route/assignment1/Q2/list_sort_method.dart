import 'dart:io';

void main() {

  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Enter the third number:');
  double num3 = double.parse(stdin.readLineSync()!);

  List<double> numbers = [num1, num2, num3];

  numbers.sort();

  for (double num in numbers) {
    print(num);
  }
}
