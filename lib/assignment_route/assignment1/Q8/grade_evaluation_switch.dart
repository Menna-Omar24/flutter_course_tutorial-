import 'dart:io';

void main() {
  // طلب الدرجة من المستخدم
  print("Enter the grade (A, B, C, D, F): ");
  String grade = stdin.readLineSync()!.toUpperCase(); // تحويل المدخلات للحروف الكبيرة للتأكد من معالجة الأحرف الكبيرة والصغيرة

  // استخدام switch لتحديد الرسالة المناسبة
  switch (grade) {
    case 'A':
      print("Excellent");
      break;
    case 'B':
      print("Outstanding");
      break;
    case 'C':
      print("Good");
      break;
    case 'D':
      print("Can Do Better");
      break;
    case 'F':
      print("Failed!");
      break;
    default:
      print("Invalid Grade");
  }
}
