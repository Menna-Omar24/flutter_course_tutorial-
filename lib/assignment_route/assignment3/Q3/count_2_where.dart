int count2(List<int> numbers) {
  return numbers.where((number) => number == 2).length;
}

void main() {
  List<int> numbers = [1, 5, 2, 2, 5, 2];
  print(count2(numbers));
}
