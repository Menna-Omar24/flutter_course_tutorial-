import 'dart:io';

void main() {
  // طباعة رسالة طلب إدخال الرقم
  print('Enter a number:');

  // بناخد الرقم من المستخدم
  int number = int.parse(stdin.readLineSync()!);

  // بنحدد الزوجي والفردي باستخدام الشرط المختصر
  String result = (number % 2 == 0) ? "YES" : "NO";
  print(result);
}
