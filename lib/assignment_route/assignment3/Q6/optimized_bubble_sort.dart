void optimizedBubbleSort(List<int> numbers) {
  int n = numbers.length;

  for (int i = 0; i < n - 1; i++) {
    bool swapped = false;

    for (int j = 0; j < n - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
        swapped = true;
      }
    }

    // لو مفيش تبديل حصل، يبقى المصفوفة مرتبة ونقدر نخرج من الحلقة
    if (!swapped) {
      break;
    }
  }
}

void main() {
  List<int> numbers = [1, 0, 3, 6, 2, 5];
  optimizedBubbleSort(numbers);
  print(numbers); // [0, 1, 2, 3, 5, 6]
}
