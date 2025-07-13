// الطريقة الأولى: استخدام if-else
import 'dart:io';

void main() {
  // طباعة رسالة طلب إدخال الرقم
  print('Enter a number:');

  // بناخد الرقم من المستخدم
  int number = int.parse(stdin.readLineSync()!);

  // بنشوف إذا كان الرقم زوجي ولا فردي
  if (number % 2 == 0) {
    print("YES");
  } else {
    print("NO");
  }
}
