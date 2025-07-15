// takes

// 7 ->
// 1 2 3 4 5 6 7
// + - - - - - + -> 2
// 9
// 1 2 3 4 5 6 7 8 9
// + - + - - - - - + -> 3 not prime

import 'dart:io';

void main() {
  print("Enter a number ");
  int number = int.parse(stdin.readLineSync()!);
  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      print("Not prime");
      return;
    }
  }
  print("Prime");

  print("Enter a number ");
  int number2 = int.parse(stdin.readLineSync()!);
  int counter2 = 0;
  for (int i = 1; i <= number2; i++) {
    if (number2 % i == 0) {
      counter2++;
    }
  }
  if (counter2 == 2) {
    print("Prime");
  } else {
    print("Not prime");
  }
}
