int calculateEven(List<int> numbers) {
  return numbers.where((number) => number % 2 == 0).reduce((a, b) => a + b);
}

void main() {
  List<int> numbers = [1, 4, 2, 5, -1, 8];
  print(calculateEven(numbers));
}
