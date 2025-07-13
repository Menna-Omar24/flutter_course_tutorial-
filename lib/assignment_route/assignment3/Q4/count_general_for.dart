Map<int, int> countGeneral(List<int> numbers) {
  Map<int, int> countMap = {};

  for (int i = 0; i < numbers.length; i++) {
    if (countMap.containsKey(numbers[i])) {
      countMap[numbers[i]] = countMap[numbers[i]]! + 1;
    } else {
      countMap[numbers[i]] = 1;
    }
  }

  return countMap;
}

void main() {
  List<int> numbers = [1, 2, 3, 1, 3, 6];
  Map<int, int> result = countGeneral(numbers);

  result.forEach((key, value) {
    print('$key -> $value');
  });
}
