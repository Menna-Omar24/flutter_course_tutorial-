import 'dart:io';

void main() {
  // طباعة رسالة طلب إدخال الأرقام
  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Enter the third number:');
  double num3 = double.parse(stdin.readLineSync()!);

  // ترتيب الأرقام باستخدام if-else
  double min, mid, max;
  // check num1
  if (num1 <= num2 && num1 <= num3) {
    min = num1;
    if (num2 <= num3) {
      mid = num2;
      max = num3;
    } else {
      mid = num3;
      max = num2;
    }
    // check num2
  } else if (num2 <= num1 && num2 <= num3) {
    min = num2;
    if (num1 <= num3) {
      mid = num1;
      max = num3;
    } else {
      mid = num3;
      max = num1;
    }
    // check num3
  } else {
    min = num3;
    if (num1 <= num2) {
      mid = num1;
      max = num2;
    } else {
      mid = num2;
      max = num1;
    }
  }

  print('$min\n$mid\n$max');
}
