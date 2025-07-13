/*
Task 3
Write a program that takes
a student's numerical grade (0-100)
and print their letter grade according to this scale:
A: 90-100
B: 80-89
C: 70-79
D: 60-69
F: Below 60
*/
import 'dart:io';

void main() {
  print("Enter a student's numerical grade (0-100): ");
  int grade = int.parse(stdin.readLineSync()!);

  if (grade >= 90 && grade <= 100) {
    print('A');
  } else if (grade >= 80 && grade <= 89) {
    print('B');
  } else if (grade >= 70 && grade <= 79) {
    print('C');
  } else if (grade >= 60 && grade <= 69) {
    print('D');
  } else if (grade < 60 && grade >= 0) {
    print('F');
  } else {
    print('invalid grade');
  }
}
