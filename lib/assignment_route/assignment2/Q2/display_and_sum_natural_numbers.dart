import 'dart:io';

void main() {
  print('Enter a number: ');
  int n = int.parse(stdin.readLineSync()!);

  print('The first $n natural numbers are: ');
  int sum = 0;

  for (int i = 1; i <= n; i++) {
    stdout.write('$i ');
    sum += i;
  }

  print('\nThe Sum of Natural Numbers up to $n terms is: $sum');
}
