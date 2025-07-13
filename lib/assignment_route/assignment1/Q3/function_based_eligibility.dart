import 'dart:io';

void checkEligibility(int age) {
  if (age >= 21) {
    print('Congratulation! You are eligible for casting your vote.');
  } else {
    print('Sorry, you are not eligible for casting your vote.');
  }
}

void main() {
  // طباعة رسالة طلب إدخال العمر
  print('Enter your age:');

  // قراءة العمر من المستخدم
  int age = int.parse(stdin.readLineSync()!);

  // استدعاء الدالة للتحقق من الأهلية
  checkEligibility(age);
}
