// Write a program that asks the user to enter a positive integer N. Then, using a while loop, print the multiplication table for N from 1 to 10.
import 'dart:io';

void main() {
  stdout.write('Enter a positive integer: ');
  int? n = int.tryParse(stdin.readLineSync() ?? '');
  if (n == null || n <= 0) {
    print('Error: please enter a valid positive integer');
    return;
  }
  int i = 1;
  while (i <= 10) {
    print('$n*$i=${n * i}');
    i++;
  }
}
