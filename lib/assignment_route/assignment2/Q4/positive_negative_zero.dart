import 'dart:io';

void main() {
  // طلب عدد الأرقام من المستخدم
  print('How many numbers do you want to check?');
  int n = int.parse(stdin.readLineSync()!);

  int positiveCount = 0;
  int negativeCount = 0;
  int zeroCount = 0;

  print('Enter $n numbers:');

  // حلقة لقراءة الأرقام وعدها
  for (int i = 0; i < n; i++) {
    int number = int.parse(stdin.readLineSync()!);

    if (number > 0) {
      positiveCount++;
    } else if (number < 0) {
      negativeCount++;
    } else {
      zeroCount++;
    }
  }

  // طباعة النتائج
  print('You entered $positiveCount positive numbers, $negativeCount negative numbers, and $zeroCount zeroes.');
}
