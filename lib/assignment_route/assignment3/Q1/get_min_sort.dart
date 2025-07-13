int getMin(List<int> numbers) {
  numbers.sort();
  return numbers[0];
}

void main() {
  List<int> numbers = [8, 0, 1, 5];
  print(getMin(numbers));
}
