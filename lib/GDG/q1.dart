// Task1: Declare variables for a person's name, age, and whether they are a student.

import 'dart:io';

void main() {
  print('Enter your name');
  String name = stdin.readLineSync()!;

  print('Enter your age');
  int age = int.parse(stdin.readLineSync()!);

  print('Are you a Student? (yes/no)');
  String isStudentInput = stdin.readLineSync()!.toLowerCase();

  bool isStudent = isStudentInput == 'yes';

  print('Name: $name');
  print('Age: $age');
  print('Is Student: $isStudent');

  // or

  // String name = 'menna';
  // int age = 21;
  // bool isStudent = true;
  // print('Name: $name');
  // print('Age: $age');
  // print('Is Student: $isStudent');
}
