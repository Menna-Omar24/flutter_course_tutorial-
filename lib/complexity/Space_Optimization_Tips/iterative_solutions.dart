int factorialIterative(int n) {
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

void main() {
  print(factorialIterative(5)); // الناتج: 120
}



// int factorial(int n) {
//   if (n <= 1) return 1;
//   return n * factorial(n - 1);
// }
// void main() {
//   print(factorial(5)); // الناتج: 120
// }
