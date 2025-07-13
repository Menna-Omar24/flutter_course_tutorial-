import 'dart:io';

void main() {
  print('Enter a number: ');
  int n = int.parse(stdin.readLineSync()!);

  int count = 0;
  int number = 1;
  int sum = 0;

  print('The odd numbers are: ');

  while (count < n) {
    stdout.write('$number ');
    sum += number;
    number += 2; // ده بيزود الرقم بمقدار 2 عشان نجيب الرقم الفردي اللي بعده
    count++; // ده بيزود عدد الأرقام اللي طبعناها
  }

  print('\nThe Sum of odd Natural Numbers up to $n terms: $sum');
}
