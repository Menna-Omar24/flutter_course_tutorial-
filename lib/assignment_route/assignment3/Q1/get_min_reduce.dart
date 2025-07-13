int getMin(List<int> numbers) {
  return numbers.reduce((currentMin, number) {
    return number < currentMin ? number : currentMin;
  });
}

void main() {
  List<int> numbers = [8, 0, 1, 5];
  print(getMin(numbers));
}
