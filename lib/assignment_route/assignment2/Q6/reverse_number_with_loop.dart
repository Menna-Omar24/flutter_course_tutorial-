import 'dart:io';

void main() {
  print('Enter an integer:');
  int number = int.parse(stdin.readLineSync()!);

  int reversedNumber = 0;

  while (number != 0) {
    // while (number > 0) {
    int digit = number % 10; //54321 -->1
    reversedNumber = reversedNumber * 10 + digit;//0+1=1
    number ~/= 10;
  }

  print('Reversed number is $reversedNumber');
}
