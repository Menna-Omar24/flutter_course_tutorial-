import 'dart:io';

void main() {
  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Enter the third number:');
  double num3 = double.parse(stdin.readLineSync()!);

  double min = num1;
  double max = num1;

  if (num2 < min) {
    min = num2;
  }
  if (num3 < min) {
    min = num3;
  }

  if (num2 > max) {
    max = num2;
  }
  if (num3 > max) {
    max = num3;
  }

  double mid = (num1 + num2 + num3) - min - max;

  print('$min\n$mid\n$max');
}
