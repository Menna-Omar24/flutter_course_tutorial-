import 'dart:io';

void main() {
  // طلب إدخال الرقم من المستخدم
  print('Enter an integer:');
  int number = int.parse(stdin.readLineSync()!);

  // التحقق مما إذا كان الرقم أقل من 2
  if (number < 2) {
    print('no');
    return;
  }

  // التحقق مما إذا كان الرقم أولياً
  bool isPrime = true; // افتراض أن الرقم أولي حتى نثبت العكس

  // التحقق من القسمة على الأعداد من 2 إلى الجذر التربيعي للرقم
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      isPrime = false;
      break; // لا حاجة لمواصلة التحقق بعد العثور على قواسم
    }
  }

  // طباعة النتيجة
  if (isPrime) {
    print('yes');
  } else {
    print('no');
  }
}
