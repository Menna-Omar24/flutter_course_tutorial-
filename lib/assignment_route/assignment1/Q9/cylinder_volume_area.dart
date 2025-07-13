import 'dart:io';
import 'dart:math'; // لاستيراد قيمة pi

void main() {
  // طلب نصف القطر والطول من المستخدم
  print("Enter the radius of the cylinder:");
  double radius = double.parse(stdin.readLineSync()!);

  print("Enter the length of the cylinder:");
  double length = double.parse(stdin.readLineSync()!);
  // const double pi = 3.14;
  // حساب المساحة
  double area = radius * radius * pi;

  // حساب الحجم
  double volume = area * length;

  // طباعة النتائج
  print("The area is ${area.toStringAsFixed(4)}");
  print("The volume is ${volume.toStringAsFixed(1)}");
}
