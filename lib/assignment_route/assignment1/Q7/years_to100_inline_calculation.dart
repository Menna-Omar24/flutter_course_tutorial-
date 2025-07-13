import 'dart:io';

void main() {
  // طلب اسم المستخدم
  print("Enter your name: ");
  String name = stdin.readLineSync()!;

  // طلب سن المستخدم
  print("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  // طباعة الرسالة وحساب السنين المتبقية داخل print مباشرة
  print("Hi, $name, you have ${100 - age} years left to be 100 years old.");
}

// int yearsLeft = 100 - age;
//
// // طباعة الرسالة للمستخدم
// print("Hi, $name, you have $yearsLeft years left to be 100 years old.");
