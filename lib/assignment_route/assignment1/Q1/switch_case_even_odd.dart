import 'dart:io';

void main() {
  // طباعة رسالة طلب إدخال الرقم
  print('Enter a number:');

  // بناخد الرقم من المستخدم
  int number = int.parse(stdin.readLineSync()!);

  // بنستخدم switch-case
  switch (number % 2) {
    case 0:
      print("YES");
      break;
    case 1:
    case -1:
      print("NO");
      break;
  }
}
