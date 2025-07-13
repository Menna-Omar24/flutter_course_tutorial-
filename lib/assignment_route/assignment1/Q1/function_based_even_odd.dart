import 'dart:io';

void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print("YES");
  } else {
    print("NO");
  }
}

void main() {
  // طباعة رسالة طلب إدخال الرقم
  print('Enter a number:');

  // بناخد الرقم من المستخدم
  int number = int.parse(stdin.readLineSync()!);

  // بنستخدم الدالة
  checkEvenOdd(number);
}
