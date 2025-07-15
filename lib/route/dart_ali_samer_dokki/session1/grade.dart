import 'dart:io';

void main() {
  print('Enter The Student Grade: ');
  int grade = int.parse(stdin.readLineSync()!);

  if (grade <= 100 && grade >= 90) {
    print('A');
  } else if (grade <= 89 && grade >= 80) {
    print('B');
  } else if (grade <= 79 && grade >= 70) {
    print('C');
  } else if (grade <= 69 && grade >= 60) {
    print('C-');
  } else if (grade <= 59 && grade >= 50) {
    print('D');
  } else if (grade <= 49 && grade >= 0) {
    print('F');
  } else {
    print('Invalid Grade');
  }
}
