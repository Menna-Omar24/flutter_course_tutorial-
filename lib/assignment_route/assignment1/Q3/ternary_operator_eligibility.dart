import 'dart:io';

void main() {
  // طباعة رسالة طلب إدخال العمر
  print('Enter your age:');

  // قراءة العمر من المستخدم
  int age = int.parse(stdin.readLineSync()!);

  // التحقق من أهلية التصويت باستخدام الشرط المختصر
  String result = (age >= 21)
      ? 'Congratulation! You are eligible for casting your vote.'
      : 'Sorry, you are not eligible for casting your vote.';

  print(result);
}
