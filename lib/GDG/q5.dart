/*
Task 5
Write a for loop that calculates the sum of all even numbers between 1 and 100, inclusive.
The program should print out the final sum.
*/
void main() {
  int sum = 0;
  for (int i = 1; i <= 100; i++) {
    if (i % 2 == 0) {
      sum += i;
    }
  }
  print('the sum of all even numbers between 1 and 100: $sum');
}
