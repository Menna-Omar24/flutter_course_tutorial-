/*
Write a program that asks the user to enter a positive integer N.
Then, using a while loop, print the multiplication table for N from 1 to 10.
*/

import 'dart:io';

void main() {
  print('plz enter a positive integer');
  int numPositive = int.parse(stdin.readLineSync()!);
  int i = 1;
  while (i <= 10) {
    print('$numPositive x $i =${numPositive * i}');
    i++;
  }
}
