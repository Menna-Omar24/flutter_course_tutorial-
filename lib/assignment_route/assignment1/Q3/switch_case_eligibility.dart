import 'dart:io';

void main() {
  // طباعة رسالة طلب إدخال العمر
  print('Enter your age:');

  // قراءة العمر من المستخدم
  int age = int.parse(stdin.readLineSync()!);

  // التحقق من أهلية التصويت باستخدام switch-case
  switch (age >= 21) {
    case true:
      print('Congratulation! You are eligible for casting your vote.');
      break;
    case false:
      print('Sorry, you are not eligible for casting your vote.');
      break;
  }
}
