import 'dart:io';

void main() {
  print('Enter first number: ');
  int n1 = int.parse(stdin.readLineSync()!);

  print('Enter second number: ');
  int n2 = int.parse(stdin.readLineSync()!);

  print('show mean: ');
  print('1. addition: ');
  print('2. subtraction: ');
  print('3. multiply: ');
  print('4. division: ');

  int operation = int.parse(stdin.readLineSync()!);
  if (operation == 1) {
    print('result addition = ${n1 + n2}');
  } else if (operation == 2) {
    print('result subtraction = ${n1 - n2}');
  } else if (operation == 3) {
    print('result multiply = ${n1 * n2}');
  } else if (operation == 4) {
    if (n2 == 0) {
      print('can\'t be divide by zero');
    } else {
      print('result division = ${n1 / n2}');
    }
  } else {
    print('invalid operation');
  }
}
