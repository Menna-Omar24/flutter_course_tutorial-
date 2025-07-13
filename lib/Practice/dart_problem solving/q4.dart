/*
Grade Classification:
Write a program that prompts the user to enter a grade and displays an appropriate
message based on the grade.
Grade Messages:
• A: Excellent
• B: Outstanding
• C: Good
• D: Can Do Better
• F: Failed
• Other: Invalid Grade
Example:
Input: A
Output: IEEE: Excellent
Input: L
Output: IEEE: Invalid Grade
Note: Use the switch statement for this program.
*/
import 'dart:io';

void main() {
  stdout.write('Enter your grade: ');
  String grade = stdin.readLineSync()!.toUpperCase();
  switch (grade) {
    case 'A':
      print(' IEEE: Excellent');
      break;
    case 'B':
      print(' IEEE: Outstanding');
      break;
    case 'C':
      print(' IEEE: Good');
      break;
    case 'D':
      print(' IEEE: Can Do Better');
      break;
    case 'F':
      print(' IEEE: Failed');
      break;
    default:
      print('IEEE: Invalid Grade');
  }
}
