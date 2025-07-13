void main() {
  List<int> array = [1, 9, 0, 5, 4, 2];

  int sum = 0;
  int count = array.length;

  for (int number in array) {
    sum += number;
  }

  double average = sum / count;

  print(average);
}
