void bubbleSort(List<int> numbers) {
  int n = numbers.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        // تبديل الأماكن لو كانت العناصر مش مرتبة صح
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<int> numbers = [1, 0, 3, 6, 2, 5];
  bubbleSort(numbers);
  print(numbers); // [0, 1, 2, 3, 5, 6]
}
