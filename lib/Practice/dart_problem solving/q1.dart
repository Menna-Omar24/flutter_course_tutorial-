// Declare variables for a person's name, age, and whether they are a student.
import 'dart:io';

void main() {
  print('enter your name');
  String name = stdin.readLineSync()!;
  stdout.write('enter your age: ');
  double age = double.parse(stdin.readLineSync() ?? '');
  bool isStudent = false;
  print(name);
  print(age);
  print(isStudent);
}
