int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
                     // n - 1           // n * fac
}                    // 5 - 1 ---> 4 ----> 5 * 4
                     // 4 - 1 ---> 3 ----> 4 * 3
                     // 3 - 1 ---> 2 ----> 3 * 2
                     // 2 - 1 ---> 1 ----> 2 * 1
                     // 1 - 1 ---> 1 ----> 0 * 1
// factorial(2) * 1 = 2
// factorial(3) * 2 = 6
// factorial(4) * 6 = 24
// factorial(5) * 24 = 120

void main() {
  print(factorial(5)); // الناتج: 120
}

// int factorialIterative(int n) {
//   int result = 1;
//   for (int i = 1; i <= n; i++) {
//     result *= i;
//   }
//   return result;
// }
//
// void main() {
//   print(factorialIterative(5)); // الناتج: 120
// }












// التكرارية

// int factorialIterative(int n) {
//   int result = 1;
//   for (int i = 1; i <= n; i++) {
//     result *= i;
//   }
//   return result;
// }
//
// void main() {
//   print(factorialIterative(5)); // الناتج: 120
// }
