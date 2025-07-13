void selectionSort(List<int> numbers) {
  int n = numbers.length;

  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;

    // دور على أصغر عنصر في الجزء الغير مرتب
    for (int j = i + 1; j < n; j++) {
      if (numbers[j] < numbers[minIndex]) {
        minIndex = j;
      }
    }

    // بدل أصغر عنصر مع أول عنصر في الجزء الغير مرتب
    int temp = numbers[minIndex];
    numbers[minIndex] = numbers[i];
    numbers[i] = temp;
  }
}

void main() {
  List<int> numbers = [1, 0, 3, 6, 2, 5];
  selectionSort(numbers);
  print(numbers); // [0, 1, 2, 3, 5, 6]
}
