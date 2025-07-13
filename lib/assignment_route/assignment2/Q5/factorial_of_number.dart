import 'dart:io';

void main() {
  // طلب عدد من المستخدم
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);

  // تحقق من إدخال عدد صحيح غير سالب
  if (number < 0) {
    print('Factorial is not defined for negative numbers.');
    return;
  }

  int factorial = 1; // قيمة العامل تبدأ من 1

  // حساب العامل باستخدام حلقة for
  // for (int i = 1; i <= number; i++) {
  //   factorial *= i; // ضرب القيمة الحالية في i
  // }
  for (int i = number; i >0; i--) {
    factorial *= i; // ضرب القيمة الحالية في i
  }

  // طباعة النتيجة
  print('Factorial of $number is $factorial');
}
