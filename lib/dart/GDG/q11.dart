/*
Create a set of numbers from 1 to 20.
Remove all the odd numbers from the set.
Then, add a few new numbers to the set.
Finally, print the set to show the remaining even numbers and the added ones.
*/
void main() {
  Set<int> numbers = {for (int i = 1; i <= 20; i++) i};

  numbers.removeWhere(
    (n) => n.isOdd,
  );
  numbers.addAll({22, 24, 26, 30, 32});
  print(numbers);
}
