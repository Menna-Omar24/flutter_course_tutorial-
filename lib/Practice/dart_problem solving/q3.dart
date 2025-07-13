/*
Write a program that takes a student's numerical grade (0-100) and print their letter grade according to this scale:
A: 90-100
B: 80-89
C: 70-79
D: 60-69
F: Below 60
 */
//  ! , ??, ?
import 'dart:io';

void main() {
  stdout.write('Enter student grade (0-100): ');
  String? input = stdin.readLineSync();
  int? grade = int.tryParse(input ?? '');
  if (grade == null || grade < 0 || grade > 100) {
    print('Invalid input! please enter a number between (0-100)');
    return;
  }
  String letterGrade;
  if (grade >= 90) {
    letterGrade = 'A';
  } else if (grade >= 80) {
    letterGrade = 'B';
  } else if (grade >= 70) {
    letterGrade = 'C';
  } else if (grade >= 60) {
    letterGrade = 'D';
  } else {
    letterGrade = 'F';
  }
  print('The Student grade is $letterGrade');
}
