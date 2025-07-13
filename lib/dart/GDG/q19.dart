import 'dart:io';

void main() {
  stdout.write('Enter your grade: ');
  String grade = stdin.readLineSync()!.toUpperCase();

  switch (grade) {
    case 'A':
      print('IEEE:Excellent');
      break;
    case 'B':
      print('IEEE:Outstanding');
      break;
    case 'C':
      print('IEEE:Good');
      break;
    case 'D':
      print('IEEE:Can Do Better');
      break;
    case 'F':
      print('IEEE:Failed');
      break;
    default:
      print('IEEE:Invalid Grade');
  }
}
