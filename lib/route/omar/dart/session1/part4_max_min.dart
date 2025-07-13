import 'dart:io';

void main() {
  print('Enter 3 numbers');
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  int num3 = int.parse(stdin.readLineSync()!);

  if (num1 >= num2 && num1 >= num3) {
    print('Max: $num1');
    if (num2 < num3) {
      print('Min: $num2');
    } else {
      print('Min: $num3');
    }
  } else if (num2 >= num1 && num2 >= num3) {
    print('Max: $num2');
    if (num1 < num3) {
      print('Min: $num1');
    } else {
      print('Min: $num3');
    }
  } else {
    print('Max: $num3');
    if (num1 < num2) {
      print('Min: $num1');
    } else {
      print('Min: $num2');
    }
  }
}