import 'dart:io';

void main() {
  // طباعة رسالة طلب إدخال العمر
  print('Enter your age:');

  // قراءة العمر من المستخدم
  int age = int.parse(stdin.readLineSync()!);

  // التحقق من أهلية التصويت
  if (age >= 21) {
    print('Congratulation! You are eligible for casting your vote.');
  } else {
    print('Sorry, you are not eligible for casting your vote.');
  }
}
