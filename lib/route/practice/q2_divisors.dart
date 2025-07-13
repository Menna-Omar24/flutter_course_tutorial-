// //Ex.2: Create a program that asks the user for a number and then prints out a list of all the divisors of that number.
void main() {
  divisors(12);
}

void divisors(int num) {
  List<int> list = [];
  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      list.add(i);
    }
  }
  print(list);
}
