import 'dart:io';

void main() {
  // طلب العدد من المستخدم
  print("Enter an integer:");
  int number = int.parse(stdin.readLineSync()!);

  // التحقق من قيمة العدد وطباعة الرسالة المناسبة
  if (number > 0) {
    print("Positive");
  } else if (number < 0) {
    print("Negative");
  } else {
    print("Zero");
  }
}
