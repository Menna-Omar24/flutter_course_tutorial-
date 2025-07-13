// Write a for loop that calculates the sum of all even numbers between 1 and 100, inclusive. The program should print out the final sum

void main() {
  int sum = 0;
  for (int i = 2; i <= 100; i += 2) {
    sum += i;
  }
  print('The sum of even numbers between 1 and 100 is : $sum');
}
// void main() {
//   int sum =
//       List.generate(50, (index) => (index + 1) * 2).reduce((n1, n2) => n1 + n2);
//   print(sum);
// }
