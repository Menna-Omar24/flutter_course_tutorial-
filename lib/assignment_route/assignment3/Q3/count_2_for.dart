int count2(List<int> numbers) {
  int count = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == 2) {
      count++;
    }
  }

  return count;
}

void main() {
  List<int> numbers = [1, 5, 2, 2, 5, 2];
  print(count2(numbers));
}
