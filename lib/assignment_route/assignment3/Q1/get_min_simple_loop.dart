int getMin(List<int> numbers) {
  int minValue = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < minValue) {
      minValue = numbers[i];
    }
  }
  return minValue;
}

void main() {
  List<int> myArray = [8, 0, 1, 5];
  print(getMin(myArray));
}
