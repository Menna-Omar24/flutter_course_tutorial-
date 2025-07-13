// import 'dart:io';
//
// void main() {
//   print('Enter a number: ');
//   int n = int.parse(stdin.readLineSync());
//
//   int sum = 0;
//   int count = 0;
//
//   print('The odd numbers are: ');
//
//   for (int i = 1; count < n; i++) {
//     if (i % 2 != 0) { // تحقق مما إذا كان العدد فرديًا
//       stdout.write('$i ');
//       sum += i;
//       count++;
//     }
//   }
//
//   print('\nThe Sum of odd Natural Numbers up to $n terms: $sum');
// }
//
import 'dart:io';

void main() {
  print('Enter a number: ');
  int n = int.parse(stdin.readLineSync()!);

  int sum = 0;

  print('The odd numbers are: ');

  for (int i = 1; i <= n*2; i+=2) {

      stdout.write('$i ');
      sum += i;
    }


  print('\nThe Sum of odd Natural Numbers up to $n terms: $sum');
}
