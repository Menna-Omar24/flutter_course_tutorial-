import 'dart:io';

void main() {
  print("Enter the first number (N1): ");
  int n1 = int.parse(stdin.readLineSync()!);

  print("Enter the second number (N2): ");
  int n2 = int.parse(stdin.readLineSync()!);

  print("Enter the third number (N3): ");
  int n3 = int.parse(stdin.readLineSync()!);

  // حساب الماكس باستخدام Ternary Operator
  int maxNumber = (n1 > n2)
      ? (n1 > n3 ? n1 : n3)
      : (n2 > n3 ? n2 : n3);

  // حساب المين باستخدام Ternary Operator
  int minNumber = (n1 < n2)
      ? (n1 < n3 ? n1 : n3)
      : (n2 < n3 ? n2 : n3);

  print("Max = $maxNumber");
  print("Min = $minNumber");
}
