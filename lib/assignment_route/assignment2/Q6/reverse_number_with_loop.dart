import 'dart:io';

void main() {
  // طلب عدد صحيح من المستخدم
  print('Enter an integer:');
  int number = int.parse(stdin.readLineSync()!);

  int reversedNumber = 0;

  // عكس الأرقام باستخدام حلقة
  while (number != 0) {
    // while (number > 0) {
    int digit = number % 10; //54321 -->1
    reversedNumber = reversedNumber * 10 + digit;//0+1=1
    number ~/= 10;
  }

  // طباعة الرقم المقلوب
  print('Reversed number is $reversedNumber');
}
